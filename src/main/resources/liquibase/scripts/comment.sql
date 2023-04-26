-- liquibase formatted sql
-- changeset Homychok:1
CREATE TABLE comment(
                         id              SERIAL PRIMARY KEY NOT NULL,
                         created_at      TIMESTAMP NOT NULL,
                         text            TEXT NOT NULL,
                         ads_id          INTEGER REFERENCES public.ads(id),
                         author_id       INTEGER REFERENCES public.users(id)
);