FROM argoproj/argocli:latest as argo-source
FROM alpine:latest
COPY --from=argo-source /bin/argo /bin/argo
