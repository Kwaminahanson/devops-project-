# ── Stage 1: Build the static site ──────────────────────────
FROM squidfunk/mkdocs-material:latest AS builder
WORKDIR /docs
COPY . .
RUN mkdocs build

# ── Stage 2: Serve with Nginx ────────────────────────────────
FROM nginx:alpine
COPY --from=builder /docs/site /usr/share/nginx/html
EXPOSE 80
