{{- define "tms.appVariables" }}
- name: runtime_environment
  value: {{ .Values.variables.runtime_environment | quote }}
- name: SYMFONY__PORTAL_REPLACE_HOSTNAME
  value: {{ .Values.variables.SYMFONY__PORTAL_REPLACE_HOSTNAME | quote }}
# Ticket publishing options
- name: SYMFONY__JIRA_USERNAME
  value: {{ .Values.variables.SYMFONY__JIRA_USERNAME | quote }}
- name: SYMFONY__JIRA_PASSWORD
  value: {{ .Values.variables.SYMFONY__JIRA_PASSWORD | quote }}
- name: SYMFONY__JIRA_REST_URL
  value: {{ .Values.variables.SYMFONY__JIRA_REST_URL | quote }}
- name: SYMFONY__JIRA_CUSTOMFIELD_STARTDATE
  value: {{ .Values.variables.SYMFONY__JIRA_CUSTOMFIELD_STARTDATE | quote }}
- name: SYMFONY__JIRA_CLOSE
  value: {{ .Values.variables.SYMFONY__JIRA_CLOSE | quote }}
- name: SYMFONY__JIRA_ONHOLD
  value: {{ .Values.variables.SYMFONY__JIRA_ONHOLD | quote }}
- name: SYMFONY__JIRA_REOPENED
  value: {{ .Values.variables.SYMFONY__JIRA_REOPENED | quote }}
- name: SYMFONY__JIRA_RESUME
  value: {{ .Values.variables.SYMFONY__JIRA_RESUME | quote }}
- name: SYMFONY__JIRA_OPEN
  value: {{ .Values.variables.SYMFONY__JIRA_OPEN | quote }}

#Streamnative Credentials
- name: SYMFONY__STREAMNATIVE_CLIENT_ID
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_CLIENT_ID | quote }}
- name: SYMFONY__STREAMNATIVE_CLIENT_SECRET
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_CLIENT_SECRET | quote }}
- name: SYMFONY__STREAMNATIVE_CLIENT_EMAIL
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_CLIENT_EMAIL | quote }}
- name: SYMFONY__STREAMNATIVE_ISSUER_URL
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_ISSUER_URL | quote }}
- name: SYMFONY__STREAMNATIVE_AUDIENCE
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_AUDIENCE | quote }}
- name: SYMFONY__STREAMNATIVE_METADATA_BROKER_LIST
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_METADATA_BROKER_LIST | quote }}
- name: SYMFONY__STREAMNATIVE_SECURITY_PROTOCOL
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_SECURITY_PROTOCOL | quote }}
- name: SYMFONY__STREAMNATIVE_MECHANISM
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_MECHANISM | quote }}
- name: SYMFONY__STREAMNATIVE_USERNAME
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_USERNAME | quote }}
- name: SYMFONY__STREAMNATIVE_BOOTSTRAP_SERVERS
  value: {{ .Values.variables.SYMFONY__STREAMNATIVE_BOOTSTRAP_SERVERS | quote }}

# Nginx basic
- name: NGINX_WORKER_PROCESSES
  value: "1"
- name: NGINX_WORKER_CONNECTIONS
  value: {{ .Values.variables.NGINX_WORKER_CONNECTIONS | quote }}
# PHP CLI
- name: PHP_TIMEZONE
  value: "Europe/Berlin"
# PHP FPM
- name: PHP_FPM_LOG_LEVEL
  value: "notice"
- name: PHP_FPM_MEMORY_LIMIT
  value: {{ .Values.variables.PHP_FPM_MEMORY_LIMIT | quote }}
- name: PHP_FPM_XDEBUG
  value: {{ .Values.variables.PHP_FPM_XDEBUG | quote }}
- name: PHP_FPM_SESSION_SAVE_HANDLER
  value: {{ .Values.variables.PHP_FPM_SESSION_SAVE_HANDLER | quote }}
- name: PHP_FPM_SESSION_SAVE_PATH
  value: {{ .Values.variables.PHP_FPM_SESSION_SAVE_PATH | quote }}
- name: PHP_FPM_MEMCACHED_SESSION_REDUNDANCY
  value: "3"
# PHP FPM pool
- name: PHP_FPM_POOL_PM_MAX_CHILDREN
  value: {{ .Values.variables.PHP_FPM_POOL_PM_MAX_CHILDREN | quote }}
- name: PHP_FPM_POOL_PM_START_SERVERS
  value: "15"
- name: PHP_FPM_POOL_MIN_SPARE_SERVERS
  value: "10"
- name: PHP_FPM_POOL_MAX_SPARE_SERVERS
  value: {{ .Values.variables.PHP_FPM_POOL_MAX_SPARE_SERVERS | quote }}
- name: PHP_FPM_POOL_MAX_REQUESTS
  value: {{ .Values.variables.PHP_FPM_POOL_MAX_REQUESTS | quote }}
# Webserver build properties
- name: SYMFONY__ENV
  value: {{ .Values.variables.SYMFONY__ENV | quote }}
- name: SYMFONY__DEBUG
  value: {{ .Values.variables.SYMFONY__DEBUG | quote }}
- name: SYMFONY__DB_NAME
  value: {{ .Values.variables.SYMFONY__DB_NAME | quote }}
- name: SYMFONY__DB_HOST
  value: {{ .Values.variables.SYMFONY__DB_HOST | quote }}
- name: SYMFONY__DB_PORT
  value: "3306"
- name: SYMFONY__CLASSROOM_LINK
  value: {{ .Values.variables.SYMFONY__CLASSROOM_LINK | quote }}
- name: SYMFONY__CLASSROOM_DEFAULT_URL_TEMPLATE
  value: {{ .Values.variables.SYMFONY__CLASSROOM_DEFAULT_URL_TEMPLATE | quote }}
- name: SYMFONY__CLASSROOM_DEFAULT_VERSION
  value: {{ .Values.variables.SYMFONY__CLASSROOM_DEFAULT_VERSION | quote }}
# Assessment App
- name: SYMFONY__ASSESSMENT_APP_URL
  value: {{ .Values.variables.SYMFONY__ASSESSMENT_APP_URL | quote }}
- name: SYMFONY__ASSESSMENT_APP_URL_REDIRECT
  value: {{ .Values.variables.SYMFONY__ASSESSMENT_APP_URL_REDIRECT | quote }}
# Acceptance tests
- name: SYMFONY__ACCEPTANCE_TEST__WD_HOST_URL
  value: {{ .Values.variables.SYMFONY__ACCEPTANCE_TEST__WD_HOST_URL | quote }}
- name: SYMFONY__ACCEPTANCE_TEST__BASE_URL
  value: {{ .Values.variables.SYMFONY__ACCEPTANCE_TEST__BASE_URL | quote }}
- name: SYMFONY__ACCEPTANCE_TEST__URL
  value: {{ .Values.variables.SYMFONY__ACCEPTANCE_TEST__URL | quote }}
- name: SYMFONY__ACCEPTANCE_TEST__SELENIUM_HOST
  value: {{ .Values.variables.SYMFONY__ACCEPTANCE_TEST__SELENIUM_HOST | quote }}
- name: SYMFONY__ACCEPTANCE_TEST__USERNAME
  value: {{ .Values.variables.SYMFONY__ACCEPTANCE_TEST__USERNAME | quote }}
- name: SYMFONY__ACCEPTANCE_TEST__PASSWORD
  value: {{ .Values.variables.SYMFONY__ACCEPTANCE_TEST__PASSWORD | quote }}
# Unit tests
- name: SYMFONY__TEST_DB_NAME
  value: {{ .Values.variables.SYMFONY__TEST_DB_NAME | quote }}
# Behavior tests
- name: SYMFONY__BEHAVIOR_TEST_DB_NAME
  value: {{ .Values.variables.SYMFONY__BEHAVIOR_TEST_DB_NAME | quote }}
# Bugsnag
- name: SYMFONY__BUGSNAG__API_KEY
  value: {{ .Values.variables.SYMFONY__BUGSNAG__API_KEY | quote }}
- name: SYMFONY__BUGSNAG__APP_VERSION
  value: {{ .Values.variables.SYMFONY__BUGSNAG__APP_VERSION | quote }}
# Twilio options
- name: SYMFONY__TWILIO__AUTH_TOKEN
  value: {{ .Values.variables.SYMFONY__TWILIO__AUTH_TOKEN | quote }}
- name: SYMFONY__TWILIO__SID
  value: {{ .Values.variables.SYMFONY__TWILIO__SID | quote }}
- name: SYMFONY__TWILIO__APP_ID
  value: {{ .Values.variables.SYMFONY__TWILIO__APP_ID | quote }}
- name: SYMFONY__TWILIO__SIP_URI
  value: {{ .Values.variables.SYMFONY__TWILIO__SIP_URI | quote }}
# Geolocation services (LS-186)
- name: SYMFONY__GEOLOCATION_URL
  value: {{ .Values.variables.SYMFONY__GEOLOCATION_URL | quote }}
# Statistics generation options (SD-7965)
- name: SYMFONY__COURSE_ONLINE_REPORT_SESSION_LIMIT
  value: "2000"
# Hr statistics generation options
- name: SYMFONY__STUDENTS_ONLINE_REPORT_COURSE_LIMIT
  value: "50"
- name: SYMFONY__COURSES_ONLINE_REPORT_LIMIT
  value: "50"
# Stripe payment service options
- name: SYMFONY__STRIPE__DE_PUBLIC_KEY
  value: {{ .Values.variables.SYMFONY__STRIPE__DE_PUBLIC_KEY | quote }}
- name: SYMFONY__STRIPE__DE_SECRET_KEY
  value: {{ .Values.variables.SYMFONY__STRIPE__DE_SECRET_KEY | quote }}
- name: SYMFONY__STRIPE__US_PUBLIC_KEY
  value: {{ .Values.variables.SYMFONY__STRIPE__US_PUBLIC_KEY | quote }}
- name: SYMFONY__STRIPE__US_SECRET_KEY
  value: {{ .Values.variables.SYMFONY__STRIPE__US_SECRET_KEY | quote }}
- name: SYMFONY__STRIPE__CH_PUBLIC_KEY
  value: {{ .Values.variables.SYMFONY__STRIPE__CH_PUBLIC_KEY | quote }}
- name: SYMFONY__STRIPE__CH_SECRET_KEY
  value: {{ .Values.variables.SYMFONY__STRIPE__CH_SECRET_KEY | quote }}
# Excel export settings (SD-7867)
- name: SYMFONY__STUDENT_EXPORT_REPORT_LIMIT
  value: "2000"
- name: SYMFONY__SESSION_EXPORT_REPORT_LIMIT
  value: "2000"
# RabbitMQ service options
- name: SYMFONY__RABBIT_MQ__HOST
  value: {{ .Values.variables.RABBIT_MQ__HOST | quote }}
- name: SYMFONY__RABBIT_MQ__PORT
  value: {{ .Values.variables.SYMFONY__RABBIT_MQ__PORT | quote }}
- name: SYMFONY__RABBIT_MQ__USER
  value: {{ .Values.variables.SYMFONY__RABBIT_MQ__USER | quote }}
- name: SYMFONY__RABBIT_MQ__PASSWORD
  value: {{ .Values.variables.SYMFONY__RABBIT_MQ__PASSWORD | quote }}
- name: SYMFONY__RABBIT_MQ__VHOST
  value: "/"
- name: SYMFONY__RABBIT_MQ__CONNECTION_TIMEOUT
  value: "3"
- name: SYMFONY__RABBIT_MQ__READ_WRITE_TIMEOUT
  value: "3"
- name: SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__TMS_UPLOAD_PREFIX
  value: {{ .Values.variables.SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__TMS_UPLOAD_PREFIX | quote }}
- name: SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__S3_UPLOAD_PREFIX
  value: {{ .Values.variables.SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__S3_UPLOAD_PREFIX | quote }}
- name: SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__TMS_SLIDESHOW_PREFIX
  value: {{ .Values.variables.SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__TMS_SLIDESHOW_PREFIX | quote }}
- name: SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__UPLOAD_CLEANUP
  value: "true"
- name: SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__S3_TARGET_PREFIX
  value: {{ .Values.variables.SYMFONY__RABBIT_MQ__MATERIAL_CONVERSION__S3_TARGET_PREFIX | quote }}
# Amazon S3 service options
- name: SYMFONY__AWS_S3__KEY
  value: {{ .Values.variables.SYMFONY__AWS_S3__KEY | quote }}
- name: SYMFONY__AWS_S3__SECRET
  value: {{ .Values.variables.SYMFONY__AWS_S3__SECRET | quote }}
- name: SYMFONY__AWS_S3__REGION
  value: {{ .Values.variables.SYMFONY__AWS_S3__REGION | quote }}
- name: SYMFONY__AWS_S3__BUCKET
  value: {{ .Values.variables.SYMFONY__AWS_S3__BUCKET | quote }}
- name: SYMFONY__AWS_S3__TARGET_KEY
  value: {{ .Values.variables.SYMFONY__AWS_S3__TARGET_KEY | quote }}
- name: SYMFONY__AWS_S3__TARGET_SECRET
  value: {{ .Values.variables.SYMFONY__AWS_S3__TARGET_SECRET | quote }}
- name: SYMFONY__AWS_S3__TARGET_REGION
  value: {{ .Values.variables.SYMFONY__AWS_S3__TARGET_REGION | quote }}
- name: SYMFONY__AWS_S3__TARGET_BUCKET
  value: {{ .Values.variables.SYMFONY__AWS_S3__TARGET_BUCKET | quote }}
- name: SYMFONY__AWS_S3__PROFILEPIC_KEY
  value: {{ .Values.variables.SYMFONY__AWS_S3__PROFILEPIC_KEY | quote }}
- name: SYMFONY__AWS_S3__PROFILEPIC_SECRET
  value: {{ .Values.variables.SYMFONY__AWS_S3__PROFILEPIC_SECRET | quote }}
- name: SYMFONY__AWS_S3__PROFILEPIC_REGION
  value: {{ .Values.variables.SYMFONY__AWS_S3__PROFILEPIC_REGION | quote }}
- name: SYMFONY__AWS_S3__PROFILEPIC_BUCKET
  value: {{ .Values.variables.SYMFONY__AWS_S3__PROFILEPIC_BUCKET | quote }}
- name: SYMFONY__AWS_S3__PROFILEPIC_PREFIX
  value: {{ .Values.variables.SYMFONY__AWS_S3__PROFILEPIC_PREFIX | quote }}
- name: SYMFONY__AWS_S3__UPLOADS_PREFIX
  value: {{ .Values.variables.SYMFONY__AWS_S3__UPLOADS_PREFIX | quote }}
# PowerBI
- name: SYMFONY__POWERBI_ENABLED
  value: {{ .Values.variables.SYMFONY__POWERBI_ENABLED | quote }}
- name: SYMFONY__POWERBI_USERNAME
  value: {{ .Values.variables.SYMFONY__POWERBI_USERNAME | quote }}
- name: SYMFONY__POWERBI_PASSWORD
  value: {{ .Values.variables.SYMFONY__POWERBI_PASSWORD | quote }}
- name: SYMFONY__POWERBI_TENANT
  value: {{ .Values.variables.SYMFONY__POWERBI_TENANT | quote }}
- name: SYMFONY__POWERBI_CLIENT_ID
  value: {{ .Values.variables.SYMFONY__POWERBI_CLIENT_ID | quote }}
- name: SYMFONY__POWERBI_GROUP_ID
  value: {{ .Values.variables.SYMFONY__POWERBI_GROUP_ID | quote }}
- name: SYMFONY__POWERBI_REPORTS_ATTENDANCE_AGGREGATED_REPORT_ID
  value: {{ .Values.variables.SYMFONY__POWERBI_REPORTS_ATTENDANCE_AGGREGATED_REPORT_ID | quote }}
- name: SYMFONY__POWERBI_REPORTS_ATTENDANCE_AGGREGATED_ACCESS
  value: "all"
- name: SYMFONY__POWERBI_REPORTS_ATTENDANCE_DETAILED_REPORT_ID
  value: {{ .Values.variables.SYMFONY__POWERBI_REPORTS_ATTENDANCE_DETAILED_REPORT_ID | quote }}
- name: SYMFONY__POWERBI_REPORTS_ATTENDANCE_DETAILED_ACCESS
  value: "all"
#MS TEAM API
- name: SYMFONY__MSTEAMS_API__URL
  value: {{ .Values.variables.SYMFONY__MSTEAMS_API__URL | quote }}
# GlobalEnglish
- name: SYMFONY__GE__TOKEN
  value: {{ .Values.variables.SYMFONY__GE__TOKEN | quote }}
- name: SYMFONY__GE__PUBLIC_KEY_URL
  value: {{ .Values.variables.SYMFONY__GE__PUBLIC_KEY_URL | quote }}
- name: SYMFONY__GE__SERVICE_URL
  value: {{ .Values.variables.SYMFONY__GE__SERVICE_URL | quote }}
- name: SYMFONY__GE__DASHBOARD__URL
  value: {{ .Values.variables.SYMFONY__GE__DASHBOARD__URL | quote }}
- name: SYMFONY__GE__KEY
  value: {{ .Values.variables.SYMFONY__GE__KEY | quote }}
- name: SYMFONY__GE__EDGE__URL
  value: {{ .Values.variables.SYMFONY__GE__EDGE__URL | quote }}
- name: SYMFONY__GE__EDGE__API__KEY
  value: {{ .Values.variables.SYMFONY__GE__EDGE__API__KEY | quote }}
- name: SYMFONY__GE__AWS__OUP__URL
  value: {{ .Values.variables.SYMFONY__GE__AWS__OUP__URL | quote }}
- name: SYMFONY__GE__AWS__OUP__API__KEY
  value: {{ .Values.variables.SYMFONY__GE__AWS__OUP__API__KEY | quote }}
- name: SYMFONY__GE__AWS__SNS__ACCESS__KEY
  value: {{ .Values.variables.SYMFONY__GE__AWS__SNS__ACCESS__KEY | quote }}
- name: SYMFONY__GE__AWS__SNS__SECRET__KEY
  value: {{ .Values.variables.SYMFONY__GE__AWS__SNS__SECRET__KEY | quote }}
- name: SYMFONY__GE__AWS__SNS__TOPIC__ARN
  value: {{ .Values.variables.SYMFONY__GE__AWS__SNS__TOPIC__ARN | quote }}
- name: SYMFONY__GE__AWS__SNS__REGION
  value: {{ .Values.variables.SYMFONY__GE__AWS__SNS__REGION | quote }}
- name: SYMFONY__GE__AWS__MESSAGING_SERVICE__URL
  value: {{ .Values.variables.SYMFONY__GE__AWS__MESSAGING_SERVICE__URL | quote }}
- name: SYMFONY__GE__AWS__MESSAGING_SERVICE__TOKEN
  value: {{ .Values.variables.SYMFONY__GE__AWS__MESSAGING_SERVICE__TOKEN | quote }}
# GraphQL API
- name: SYMFONY__GRAPHQL_API__URL
  value: {{ .Values.variables.SYMFONY__GRAPHQL_API__URL | quote }}
- name: SYMFONY__GRAPHQL_API__API_KEY
  value: {{ .Values.variables.SYMFONY__GRAPHQL_API__API_KEY | quote }}
# OpenTok API
- name: SYMFONY__CLASSROOM_API__URL
  value: {{ .Values.variables.SYMFONY__CLASSROOM_API__URL | quote }}
- name: SYMFONY__CLASSROOM_API__KEY
  value: {{ .Values.variables.SYMFONY__CLASSROOM_API__KEY | quote }}
# participant-availability-tool
- name: SYMFONY__PARTICIPANT_AVAILABILITY_TOOL__URL
  value: {{ .Values.variables.SYMFONY__PARTICIPANT_AVAILABILITY_TOOL__URL | quote }}
# Mails
- name: SYMFONY__SMTP_HOST
  value: {{ .Values.variables.SYMFONY__SMTP_HOST | quote }}
- name: SYMFONY__SMTP_USERNAME
  value: {{ .Values.variables.SYMFONY__SMTP_USERNAME | quote }}
- name: SYMFONY__SMTP_PASSWORD
  value: {{ .Values.variables.SYMFONY__SMTP_PASSWORD | quote }}
- name: SYMFONY__FULFILLMENT__PUBLIC_KEY
  value: {{ .Values.variables.SYMFONY__FULFILLMENT__PUBLIC_KEY | quote }}
# AWS Cognito
- name: SYMFONY__AWS_COGNITO_REGION
  value: {{ .Values.variables.SYMFONY__AWS_COGNITO_REGION | quote }}
- name: SYMFONY__AWS_COGNITO_USERPOOL_ID
  value: {{ .Values.variables.SYMFONY__AWS_COGNITO_USERPOOL_ID | quote }}
- name: SYMFONY__AWS_COGNITO_ACCESS_KEY_ID
  value: {{ .Values.variables.SYMFONY__AWS_COGNITO_ACCESS_KEY_ID | quote }}
- name: SYMFONY__AWS_COGNITO_SECRET_ACCESS_KEY
  value: {{ .Values.variables.SYMFONY__AWS_COGNITO_SECRET_ACCESS_KEY | quote }}
- name: SYMFONY__AWS_COGNITO_CLIENT_ID
  value: {{ .Values.variables.SYMFONY__AWS_COGNITO_CLIENT_ID | quote }}
# AWS CloudFront
- name: SYMFONY__AWS_CLOUDFRONT_KEY_PAIR_ID
  value: {{ .Values.variables.SYMFONY__AWS_CLOUDFRONT_KEY_PAIR_ID | quote }}
- name: SYMFONY__AWS_CLOUDFRONT_PRIVATE_KEY_PATH
  value: {{ .Values.variables.SYMFONY__AWS_CLOUDFRONT_PRIVATE_KEY_PATH | quote }}
- name: SYMFONY__AWS_CLOUDFRONT_ENCRYPTION_PASSWORD
  value: {{ .Values.variables.SYMFONY__AWS_CLOUDFRONT_ENCRYPTION_PASSWORD | quote }}

# NYLAS Calendar Invite
- name: SYMFONY__NYLAS_API_URL
  value: {{ .Values.variables.SYMFONY__NYLAS_API_URL | quote }}
- name: SYMFONY__NYLAS_API_ACCESS_KEY
  value: {{ .Values.variables.SYMFONY__NYLAS_API_ACCESS_KEY | quote }}
- name: SYMFONY__NYLAS_API_CALENDAR_ID
  value: {{ .Values.variables.SYMFONY__NYLAS_API_CALENDAR_ID | quote }}
- name: SYMFONY__NYLAS_API_GRANT_ID
  value: {{ .Values.variables.SYMFONY__NYLAS_API_GRANT_ID | quote }}
# OSCAR API
- name: SYMFONY__OSCAR_API__URL
  value: {{ .Values.variables.SYMFONY__OSCAR_API__URL | quote }}
- name: SYMFONY__OSCAR_API__AUTH_TOKEN
  value: {{ .Values.variables.SYMFONY__OSCAR_API__AUTH_TOKEN | quote }}
# Salesforce API
- name: SYMFONY__SALESFORCE_API__URL
  value: {{ .Values.variables.SYMFONY__SALESFORCE_API__URL | quote }}
- name: SYMFONY__SALESFORCE_API__TOKEN
  value: {{ .Values.variables.SYMFONY__SALESFORCE_API__TOKEN | quote }}
# SSO app configs
- name: SYMFONY__SSO__APP_URL
  value: {{ .Values.variables.SYMFONY__SSO__APP_URL | quote }}
- name: SYMFONY__IBAN_API_KEY
  value: {{ .Values.variables.SYMFONY__IBAN_API_KEY | quote }}
- name: SYMFONY__IBAN_API_URL
  value: {{ .Values.variables.SYMFONY__IBAN_API_URL | quote }}
- name: SYMFONY__POWERBI_REPORTS_TRAINER_LED_COURSE_REPORT_ID
  value: {{ .Values.variables.SYMFONY__POWERBI_REPORTS_TRAINER_LED_COURSE_REPORT_ID | quote }}
- name: SYMFONY__POWERBI_REPORTS_TRAINER_LED_COURSE_ACCESS
  value: "all"
- name: SYMFONY__POWERBI_REPORTS_TEST_RESULTS_REPORT_ID
  value: {{ .Values.variables.SYMFONY__POWERBI_REPORTS_TEST_RESULTS_REPORT_ID | quote }}
- name: SYMFONY__POWERBI_REPORTS_TEST_RESULTS_ACCESS
  value: "all"
- name: SYMFONY__POWERBI_REPORTS_TRAINER_LED_COURSE_FILTER_TABLE_NAME
  value: {{ .Values.variables.SYMFONY__POWERBI_REPORTS_TRAINER_LED_COURSE_FILTER_TABLE_NAME | quote }}
- name: SYMFONY__POWERBI_REPORTS_TRAINER_LED_COURSE_FILTER_COLUMN_NAME
  value: {{ .Values.variables.SYMFONY__POWERBI_REPORTS_TRAINER_LED_COURSE_FILTER_COLUMN_NAME | quote }}
- name: SYMFONY__POWERBI_REPORTS_TEST_RESULTS_FILTER_TABLE_NAME
  value: {{ .Values.variables.SYMFONY__POWERBI_REPORTS_TEST_RESULTS_FILTER_TABLE_NAME | quote }}
- name: SYMFONY__POWERBI_REPORTS_TEST_RESULTS_FILTER_COLUMN_NAME
  value: {{ .Values.variables.SYMFONY__POWERBI_REPORTS_TEST_RESULTS_FILTER_COLUMN_NAME | quote }}
# TMS cookie domain settings
- name: SYMFONY__COOKIE_DOMAIN_NAME
  value: {{ .Values.variables.SYMFONY__COOKIE_DOMAIN_NAME | quote }}
# Home API Menu
- name: SYMFONY__MENU_LOGO_URL
  value: {{ .Values.variables.SYMFONY__MENU_LOGO_URL | quote }}
- name: DD_APP_ID
  value: {{ .Values.variables.DD_APP_ID | quote }}
- name: DD_CLIENT_TOKEN
  value: {{ .Values.variables.DD_CLIENT_TOKEN | quote }}
- name: DD_DBM_PROPAGATION_MODE
  value: "full"
- name: DD_ENV
  value: {{ .Values.variables.DD_ENV | quote }}
- name: DD_LOGS_INJECTION
  value: "true"
- name: DD_VERSION
  value: {{ .Values.variables.DD_VERSION | quote }}
- name: NGINX_ENABLE_VHOST_S3_PROXY_PASS
  value: {{ .Values.variables.NGINX_ENABLE_VHOST_S3_PROXY_PASS | quote }}
- name: DD_SITE
  value: {{ .Values.variables.DD_SITE | quote }}
- name: DD_AGENT_HOST
  valueFrom:
    fieldRef:
      fieldPath: status.hostIP
- name: DD_PROFILING_ENABLED
  value: "true"
{{- end -}}

{{- define "tms.ingressProductionAnnotation" }}
{{- with .Values.ingress.production.annotations }}
annotations:
  {{- toYaml . | nindent 4 }}
{{- end }}
{{- end }}

{{- define "tms.ingressLocalAnnotation" }}
{{- with .Values.ingress.local.annotations }}
annotations:
  {{- toYaml . | nindent 4 }}
{{- end }}
{{- end }}

{{- define "tms.ingressAnnotation" }}
{{- if .Values.production.enabled }}
{{ include "tms.ingressProductionAnnotation" .  }}
{{- else }}
{{ include "tms.ingressLocalAnnotation" . }}
{{- end }}
{{- end }}

{{- define "tms.ingressClass" }}
{{- if .Values.production.enabled }}
ingressClassName: {{ .Values.ingress.production.className }}
{{- else }}
ingressClassName: {{ .Values.ingress.local.className }}
{{- end }}
{{- end }}

{{- define "tms.ingressHost" }}
{{- if .Values.production.enabled }}
{{- printf "%s" .Values.ingress.production.host }}
{{- else }}
{{- printf "%s" .Values.ingress.local.host }}
{{- end }}
{{- end }}

