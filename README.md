Development (local)
Edit content. Add a new markdown file, e.g. content/blog/newpost/index.md.
Run the dev build + server.
./main.sh

This runs python3 src/main.py with no args, so basepath defaults to /. The site is built into docs/ and served at http://localhost:8888.
Iterate. Tweak markdown/template/CSS, re-run ./main.sh, hard-refresh the browser. Repeat until it looks right.
Production (GitHub Pages)
Run the production build.
./build.sh

This runs python3 src/main.py "/REPO_NAME/", which rebuilds docs/ with all the href and src paths prefixed with your repo name — necessary because GitHub Pages serves your site from https://USERNAME.github.io/REPO_NAME/, not from the domain root.
Commit and push.
git add .
git commit -m "add new blog post"
git push

GitHub Pages auto-deploys. Since you configured Pages to serve from main branch + docs/ directory, the push triggers a deploy. Usually live in under a minute.
Verify. Visit https://USERNAME.github.io/REPO_NAME/blog/newpost/ and confirm it works.
