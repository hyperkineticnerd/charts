{{/*

*/}}
{{- define "openshift.ingress.lookup" }}
{{- $resource := default "cluster" .resource }}
{{- lookup "config.openshift.io/v1" "Ingress" "" $resource }}
{{- end }}

{{/*

*/}}
{{- define "openshift.ingress.domain" }}
{{- $cluster_ingress := include "openshift.ingress.lookup" . }}
  {{- if $cluster_ingress }}
    {{- $cluster_ingress_domain := $cluster_ingress.spec.domain }}
    {{- printf "%s" $cluster_ingress_domain  | toString }}
  {{- end }}
{{- end }}

{{/*

*/}}
{{- define "openshift.ingress.host" }}
{{- $name := default $.Release.name .name }}
{{- $namespace := $.Release.Namespace }}
{{- $domain := include "openshift.ingress.domain" }}
{{- printf "%s-%s.%s" $name $namespace $domain }}
{{- end }}
