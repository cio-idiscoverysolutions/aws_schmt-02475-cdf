connection: "aws_schmt-02475-cdf"

# include all the views
include: "*.view"

datagroup: aws_schmt_02475_cdf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_schmt_02475_cdf_default_datagroup

explore: emails_report {}

# - explore: cdf_catalog

# - explore: cdf_convert

# - explore: cdf_stats

# - explore: data_dictionary

# - explore: log

# - explore: src_dlvry

# - explore: src_files

# - explore: src_master
