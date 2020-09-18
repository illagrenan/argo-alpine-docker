FROM argoproj/argocli:v2.11.0 as argo-source

FROM alpine:latest
LABEL authors="Vašek Dohnal <vaclav.dohnal@gmail.com>"

COPY --from=argo-source /bin/argo /bin/argo
RUN apk add --purge --no-cache --update \
      ca-certificates

