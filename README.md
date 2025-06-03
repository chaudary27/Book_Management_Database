# 📚 Book Management Database

This project provides a complete relational database system for managing books, customers, and orders in a book store. It includes SQL scripts to build the database schema, populate it with sample data, and run both basic and advanced queries for business insights.

## 🔧 Project Structure

📁 Book_Management_Database/
├── Book_Store.sql # Full database creation script
├── basic_structure.sql # Core table definitions (Books, Customers, Orders)
├── basic_book_queries.sql # Basic queries (SELECT, WHERE, JOINs, etc.)
├── advanced_book_queries.sql # Advanced queries (GROUP BY, HAVING, subqueries, etc.)
├── Books (1).csv # Sample book dataset
├── Customers.csv # Sample customer dataset
├── Orders.csv # Sample order dataset

markdown
Copy code

## 🗂️ Database Tables

- **Books**: Information about each book (ID, title, author, price, genre, etc.)
- **Customers**: Customer data including name, contact info, and address
- **Orders**: Order records linking customers to purchased books with timestamps

## 💡 Features

- Fully normalized relational schema
- Sample data for testing and demonstrations
- Basic and advanced SQL queries for:
  - Listing books, customers, and orders
  - Filtering and sorting data
  - Generating insights (e.g., top customers, most sold books)
- Easy to import into MySQL using `.sql` files or `.csv` files

## 🚀 Getting Started

1. **Clone this repo**
   ```bash
   git clone https://github.com/chaudary27/Book_Management_Database.git
   cd Book_Management_Database
Set up the database

Import Book_Store.sql into your MySQL environment

Or run basic_structure.sql to create tables and manually load CSVs

Explore

Use the query files to test and learn SQL operations

📊 Use Cases
Learning and practicing SQL

Teaching relational database concepts

Simulating book store analytics

Prototyping backend logic for a bookstore application

👨‍💻 Author
Muhammad Farhan Saleem (Chaudary)
GitHub | LinkedIn

📜 License
  is      

