{{- define "otel-demo.otelcol.config" -}}
{{ .Files.Get "otelcol-config.yaml" }} 
{{- end }}
