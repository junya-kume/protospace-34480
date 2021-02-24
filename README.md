## usersテーブル

| Column     | text   | Option      |
| ---------- | ------ | ----------- |
| Email      | string | null: false |
| Password   | string | null: false |
| Name       | string | null: false |
| Profile    | text   | null: false |
| Occupation | text   | null: false |
| position   | text   | null: false |

## Association
- has_many :prototypes
- has_many :comments

## prototypesテーブル

| Column     | text          | Option      |
| ---------- | ------------- | ----------- |
| title      | string        | null: false |
| catch_copy | text          | null: false |
| concept    | text          | null: false |
| image      | ActiveStorage |             |
| user       | references    |             |

## Association
- belongs_to :user
- has_many :comments

## commentsテーブル

| Column    | text       | Option      |
| --------- | ---------- | ----------- |
| text      | text       |             |
| user      | references |             |
| prototype | references |             |

## Association
- belongs_to :user
- belongs_to :prototype