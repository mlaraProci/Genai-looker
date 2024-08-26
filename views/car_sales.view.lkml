view: car_sales {
  sql_table_name: `analitica-demos.cars.car_sales` ;;

  dimension: co2_emissions {
    label: "emisiones de co2"
    type: number
    sql: ${TABLE}.CO2_emissions ;;
  }
  dimension: colour {
    label: "color de carro"
    type: string
    sql: ${TABLE}.Colour ;;
  }
  dimension: condition {
    label: "condicion de nuevo o usado"
    type: string
    sql: ${TABLE}.Condition ;;
  }
  dimension: currency {

    type: string
    sql: ${TABLE}.Currency ;;
  }
  dimension: displacement_cm3 {
    label: "cilindraje"
    type: number
    sql: ${TABLE}.Displacement_cm3 ;;
  }
  dimension: doors_number {
    label: "numero de puertas"
    type: number
    sql: ${TABLE}.Doors_number ;;
  }
  dimension: fuel_type {
    label: "tipo de combustible"
    type: string
    sql: ${TABLE}.Fuel_type ;;
  }
  dimension: index {
    type: number
    sql: ${TABLE}.Index ;;
  }
  dimension: mileage_km {
    label: "kilometraje"
    type: number
    sql: ${TABLE}.Mileage_km ;;
  }
  dimension_group: offer_publication {
    label: "fecha de publicacion oferta"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Offer_publication_date ;;
  }
  dimension: power_hp {
    label: "caballos de fuerza"
    type: number
    sql: ${TABLE}.Power_HP ;;
  }
  dimension: price {
    label: "precio del carro"
    type: number
    sql: ${TABLE}.Price ;;
  }
  dimension: production_year {
    label: "año de produccion del carro"
    type: number
    sql: ${TABLE}.Production_year ;;
  }
  dimension: transmission {
    label: "trasmision manual o autamatica"
    type: string
    sql: ${TABLE}.Transmission ;;
  }
  dimension: type {
    label: "tipo de carro"
    type: string
    sql: ${TABLE}.Type ;;
  }
  dimension: vehicle_brand {
    label: "marca del  carro"
    type: string
    sql: ${TABLE}.Vehicle_brand ;;
  }
  dimension: vehicle_model {
    label: "modelo del carro"
    type: string
    sql: ${TABLE}.Vehicle_model ;;
  }
  measure: count {
    type: count
  }
}
