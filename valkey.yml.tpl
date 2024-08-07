apiVersion: hyperspike.io/v1
kind: Valkey
metadata:
  labels:
    app.kubernetes.io/name: valkey-operator
    app.kubernetes.io/managed-by: kustomize
  name: keyval
spec:
  volumePermissions: true
  prometheus: @PROMETHEUS@
  tls: @TLS@
  certIssuer: selfsigned
  prometheusLabels:
    prometheus: "1"
