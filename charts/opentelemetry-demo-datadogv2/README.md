# OpenTelemetry Demo Helm Chart

This helm chart installs the [OpenTelemetry Demo](https://github.com/open-telemetry/opentelemetry-demo)
in a kubernetes cluster and sends telemetry data to Datadog Backend using either ingest mode (datadog agent) or
exporter mode (otel collector + datadog exporter).

## Prerequisites

- Helm 3.0+

## Installing the Chart

Add OpenTelemetry Helm repository:

```console
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
```

To install the chart with the release name my-otel-demo using ingest mode, run the following command:
```console
helm install my-otel-demo --set datadog.datadog.apiKey=$KEY --values ./ingest.yaml --values ./resource_overrides.yaml .
```

Alternatively, you may run the following command to install the chart using exporter mode:
```
helm install my-otel-demo --set opentelemetry-demo.opentelemetry-collector.config.exporters.datadog.api.key=$KEY --values ./exporter.yaml --values ./resource_overrides.yaml .
```
