FROM ruby:3.0.4

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		postgresql-client \
	&& rm -rf /var/lib/apt/lists/*
WORKDIR /Documentos/Universidad/Arquitectura de software/Proyecto2/ToonUN_Notification_ms
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["bin/rails", "s", "-b", "0.0.0.0]

