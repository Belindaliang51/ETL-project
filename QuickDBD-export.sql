-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "cavideos" (
    "video_id" INTEGER   NOT NULL,
    "year_month" VARCHAR   NOT NULL,
    "category_id" INTEGER   NOT NULL,
    "views" INTEGER   NOT NULL,
    "likes" INTEGER   NOT NULL,
    "dislikes" INTEGER   NOT NULL,
    "comment_count" INTEGER   NOT NULL,
    "comments_disabled" VARCHAR   NOT NULL,
    "ratings_disabled" VARCHAR   NOT NULL,
    CONSTRAINT "pk_cavideos" PRIMARY KEY (
        "video_id"
     )
);

CREATE TABLE "usvideos" (
    "video_id" INTEGER   NOT NULL,
    "year_month" VARCHAR   NOT NULL,
    "category_id" INTEGER   NOT NULL,
    "views" INTEGER   NOT NULL,
    "likes" INTEGER   NOT NULL,
    "dislikes" INTEGER   NOT NULL,
    "comment_count" INTEGER   NOT NULL,
    "comments_disabled" VARCHAR   NOT NULL,
    "ratings_disabled" VARCHAR   NOT NULL,
    CONSTRAINT "pk_usvideos" PRIMARY KEY (
        "video_id"
     )
);

CREATE TABLE "category_data" (
    "category_id" INTEGER   NOT NULL,
    "category_title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_category_data" PRIMARY KEY (
        "category_id"
     )
);

ALTER TABLE "cavideos" ADD CONSTRAINT "fk_cavideos_category_id" FOREIGN KEY("category_id")
REFERENCES "category_data" ("category_id");

ALTER TABLE "usvideos" ADD CONSTRAINT "fk_usvideos_category_id" FOREIGN KEY("category_id")
REFERENCES "category_data" ("category_id");

