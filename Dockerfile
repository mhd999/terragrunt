FROM hashicorp/terraform

RUN apk update \
	&& apk --no-cache add bash curl jq sudo

RUN curl -o /usr/local/bin/terragrunt -s https://api.github.com/repos/gruntwork-io/terragrunt/releases/latest | jq '.assets|.[]|select(.name=="terragrunt_linux_amd64")|.browser_download_url' \
    && sudo chmod +x /usr/local/bin/terragrunt
