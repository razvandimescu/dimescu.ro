.PHONY: writing serve clean help

help:
	@echo "Targets:"
	@echo "  make writing   — build writing-src/*.md → writing/*.html (pandoc) + writing/index.html"
	@echo "  make serve     — build writing, then serve locally at http://localhost:8000"
	@echo "  make clean     — remove the generated writing/ directory"

writing:
	@mkdir -p writing
	@if ls writing-src/*.md >/dev/null 2>&1; then \
		for f in writing-src/*.md; do \
			name=$$(basename "$$f" .md); \
			pandoc "$$f" --template=post-template.html -o "writing/$$name.html"; \
			echo "  $$f → writing/$$name.html"; \
		done; \
	else \
		echo "  (no markdown in writing-src/ yet)"; \
	fi
	@scripts/generate-writing-index.sh

serve: writing
	@echo "Serving http://localhost:8000 (Ctrl-C to stop)"
	@python3 -m http.server 8000

clean:
	rm -rf writing
	@echo "  writing/ removed"
