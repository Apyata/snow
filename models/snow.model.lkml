connection: "snowlooker"
include: "/views/users.view.lkml"
datagroup: snow_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: snow_default_datagroup

explore: users {}
