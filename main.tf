resource "google_sql_database" "database" {
  name     = "tf-sql-database"
  instance = google_sql_database_instance.instance.name
}


resource "google_sql_database_instance" "instance" {
  name             = "tf-sql-instance"
  region           = "asia-south1"
  database_version = "POSTGRES_14"
  settings {
    tier = "db-f1-micro"
  }

}

resource "google_sql_user" "users" {
  name     = var.name
  password = var.password
  instance = google_sql_database_instance.instance.name
}