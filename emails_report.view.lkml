view: emails_report {
  sql_table_name: dbo.Emails_Report ;;

  dimension: bcc {
    type: string
    sql: ${TABLE}.Bcc ;;
  }

  dimension: cc {
    type: string
    sql: ${TABLE}.Cc ;;
  }

  dimension: custodian {
    type: string
    sql: ${TABLE}.Custodian ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}."File Type" ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}."From" ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.GUID ;;
  }

  dimension_group: i_ds_communication {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.iDS_Communication_Date ;;
  }

  dimension_group: i_ds_recieved {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.iDS_Recieved_Date ;;
  }

  dimension_group: i_ds_sent {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.iDS_Sent_Date ;;
  }

  dimension: md5_digest {
    type: string
    sql: ${TABLE}."MD5 Digest" ;;
  }

  dimension: messageid {
    type: string
    sql: ${TABLE}."Message-ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: path_name {
    type: string
    sql: ${TABLE}."Path Name" ;;
  }

  dimension: recipients {
    type: string
    sql: ${TABLE}.Recipients ;;
  }

  dimension: sent_date_day_of_week {
    type: string
    sql: ${TABLE}.Sent_Date_DAY_OF_WEEK ;;
  }

  dimension: sent_date_hour {
    type: number
    sql: ${TABLE}.Sent_Date_Hour ;;
  }

  dimension: communication_date_day_of_week {
    type: string
    sql: ${TABLE}.communication_Date_DAY_OF_WEEK ;;
  }

  dimension: communication_date_hour {
    type: number
    sql: ${TABLE}.communication_Date_Hour ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Subject ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}."To" ;;
  }

  dimension: top_level_guid {
    type: string
    sql: ${TABLE}."Top Level GUID" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, path_name]
  }
}
