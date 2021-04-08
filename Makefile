THEME_NAME=docsy
DOCS_OWNER=stone-co
DOCS_REPO=stone-api-docs

trigger-update:
	curl \
      -X POST \
      -H "Accept: application/vnd.github.v3+json" \
      https://api.github.com/repos/$(DOCS_OWNER)/$(DOCS_OWNER)/actions/workflows/update-sub/dispatches \
      -d '{"ref":"master", "version": $1,"commit_sha": $2, "from": $(THEME_NAME)}'
