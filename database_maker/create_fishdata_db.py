import sqlite3
from datetime import datetime

def create_database():
    # Connect to SQLite database (creates it if it doesn't exist)
    conn = sqlite3.connect('fishdata.db')
    cursor = conn.cursor()

    # Create booking_table
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS booking_table (
        Tran_id INTEGER PRIMARY KEY AUTOINCREMENT,
        v_name TEXT,
        v_contact TEXT,
        v_address TEXT,
        name TEXT,
        category TEXT,
        description TEXT,
        quantity REAL,
        price INTEGER,
        status TEXT,
        date DATE
    )
    ''')

    # Create customer_table
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS customer_table (
        cust_id INTEGER PRIMARY KEY AUTOINCREMENT,
        cust_name TEXT,
        cust_mail TEXT,
        cust_contact TEXT,
        cust_address TEXT,
        total_purchase INTEGER
    )
    ''')

    # Create login_table
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS login_table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT,
        password TEXT,
        pname TEXT,
        date DATE
    )
    ''')

    # Create product_table
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS product_table (
        pid INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        description TEXT,
        category TEXT,
        quantity REAL,
        price INTEGER,
        date DATE,
        sp_price INTEGER
    )
    ''')

    # Create sales_table
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS sales_table (
        transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
        invoice_id INTEGER NOT NULL,
        pname TEXT,
        category TEXT,
        quantity REAL,
        price INTEGER,
        cust_name TEXT,
        cust_phone TEXT,
        date DATE,
        time TIME
    )
    ''')

    # Create vendor_table
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS vendor_table (
        Tran_id INTEGER PRIMARY KEY AUTOINCREMENT,
        v_name TEXT,
        v_contact TEXT,
        v_address TEXT,
        name TEXT,
        category TEXT,
        description TEXT,
        quantity REAL,
        price INTEGER,
        date DATE
    )
    ''')

    # Create worker_table
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS worker_table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        phone TEXT,
        email TEXT,
        designation TEXT,
        address TEXT,
        salary INTEGER,
        payment_done INTEGER,
        payment_pending INTEGER,
        joining_date DATE
    )
    ''')

    # Insert sample data into booking_table
    cursor.execute('''
    INSERT INTO booking_table (v_name, v_contact, v_address, name, category, description, quantity, price, status, date)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', ('vendor', '87287428', 'near chavdi naka', 'TUNA', 'large', ' large tune', 10, 2000, 'Place order', '2023-12-16'))

    # Insert sample data into customer_table
    customer_data = [
        ('Sahil Sutar', None, '2365978654', None, 365),
        ('Dinesh Thakur', None, '2566728920', None, 507),
        ('Swapnil Patil', None, '5648785432', None, 468),
        ('Rahul Shinde', None, '5163215687', None, 672),
        ('Vedant Kadam', None, '8765345678', None, 1088)
    ]
    cursor.executemany('''
    INSERT INTO customer_table (cust_name, cust_mail, cust_contact, cust_address, total_purchase)
    VALUES (?, ?, ?, ?, ?)
    ''', customer_data)

    # Insert sample data into login_table
    cursor.execute('''
    INSERT INTO login_table (username, password, pname, date)
    VALUES (?, ?, ?, ?)
    ''', ('admin', '1234', None, None))

    # Insert sample data into product_table
    product_data = [
        ('Salmon', 'Premium Wild-caught salmon', 'Finfish', 40, 9000, '2023-12-11', 100),
        ('Shrimp', 'Freshly dried shrimp', 'Shellfish', 98, 2450, '2023-12-11', 55),
        ('Cod', 'Large Size, dried and salted', 'Large', 126, 15732, '2023-12-15', 89),
        ('Anchovies', 'small size , dried and salted', 'small', 92, 11140, '2023-12-15', 96),
        ('Bombay Duck', 'Bombay Duck- small size dried and salted', 'small', 92, 8397, '2023-12-15', 52),
        ('Herring', 'Herring- medium size dried and salted', 'medium', 71, 6461, '2023-12-15', 91),
        ('Sardines', 'saradines-small size, dries and salted', 'Small', 2, 500, '2023-12-16', 250),
        ('Tuna', 'Tuna - smal and dried', 'small', 40, 1000, '2023-12-16', 100)
    ]
    cursor.executemany('''
    INSERT INTO product_table (name, description, category, quantity, price, date, sp_price)
    VALUES (?, ?, ?, ?, ?, ?, ?)
    ''', product_data)

    # Insert sample data into worker_table
    worker_data = [
        ('Rohan Thakur', '123456789', 'rohit@gmail.com', 'Superwiser', 'near vadgaon', 300000, 1300, 298700, '2023-11-17'),
        ('Jayesh lad', '8327252888', 'Jayesh@gmail.com', 'worker', 'near vashi', 200000, 0, 200000, '2023-12-15')
    ]
    cursor.executemany('''
    INSERT INTO worker_table (name, phone, email, designation, address, salary, payment_done, payment_pending, joining_date)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', worker_data)

    # Insert sample data into sales_table
    sales_data = [
        (5790, 'Salmon', 'Finfish', 2, 200, 'Sahil Sutar', '2365978654', '2023-08-15', '05:44:30'),
        (5790, 'Shrimp', 'Shellfish', 3, 165, 'Sahil Sutar', '2365978654', '2023-08-15', '05:44:30'),
        (1014, 'Cod', 'Large', 4, 356, 'Dinesh Thakur', '2566728920', '2023-09-15', '05:46:09')
        # Add more sales data as needed
    ]
    cursor.executemany('''
    INSERT INTO sales_table (invoice_id, pname, category, quantity, price, cust_name, cust_phone, date, time)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', sales_data)

    # Insert sample data into vendor_table
    vendor_data = [
        ('Vendor_461', '4898674642', '17,Market Road', 'Cod', 'Large', 'Large Size, dried and salted', 88, 16800, '2023-07-15'),
        ('Vendor_115', '9867321567', '84,Beach lane', 'Anchovies', 'small', 'small size , dried and salted', 61, 11716, '2023-08-15'),
        ('Vendor_292', '8796543217', '51, Beach Lane', 'Bombay Duck', 'small', 'Bombay Duck- small size dried and salted', 98, 8605, '2023-09-15')
        # Add more vendor data as needed
    ]
    cursor.executemany('''
    INSERT INTO vendor_table (v_name, v_contact, v_address, name, category, description, quantity, price, date)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', vendor_data)

    # Commit the changes and close the connection
    conn.commit()
    conn.close()

if __name__ == "__main__":
    create_database()
    print("Database created successfully with sample data!")
