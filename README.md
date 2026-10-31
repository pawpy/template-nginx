# NGINX starter

A static site served by [NGINX](https://nginx.org), built from the `Dockerfile`. Put your files in `site/`.

## Run it locally

```sh
docker build -t site .
docker run --rm -p 8080:80 site    # http://localhost:8080
```

Then open http://localhost:80. `GET /health` answers `ok` for health checks.

## Deploying

| Step | Command |
| --- | --- |
| Build | docker build |
| Start | the image's default (nginx) |

## Environment variables

| Variable | Meaning |
| --- | --- |
| `PORT` | Port to listen on. Default: 80. |

## License

MIT
