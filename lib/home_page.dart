import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ONLINE SOFT SELL'),
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Hello, Tanim')),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildDashboardItem(context, 'assets/images/customer_image.png', 'CUSTOMERS', '/customers'),
          _buildDashboardItem(context, 'assets/images/supplier_image.png', 'SUPPLIERS', '/suppliers'),
          _buildDashboardItem(context, 'assets/images/product_image.png', 'PRODUCTS', '/products'),
          _buildDashboardItem(context, 'assets/images/pos_image.png', 'POS', '/pos'),
          _buildDashboardItem(context, 'assets/images/expense_image.png', 'EXPENSE', '/expense'),
          _buildDashboardItem(context, 'assets/images/order_image.png', 'ORDERS', '/orders'),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, String imagePath, String label, String route) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 100, height: 100),
            SizedBox(height: 10),
            Text(label, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

class CustomersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customers')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/customer_image.png', width: 400,height: 400),
            SizedBox(height: 20),
            Text('Customers Screen'),
          ],
        ),
      ),
    );
  }
}

class SuppliersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Suppliers')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/supplier_image.png', width: 400,height: 400),
            SizedBox(height: 20),
            Text('Suppliers Screen'),
          ],
        ),
      ),
    );
  }
}

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/product_image.png', width: 400,height: 400),
            SizedBox(height: 20),
            Text('Products Screen'),
          ],
        ),
      ),
    );
  }
}

class POScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('POS')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pos_image.png', width: 400,height: 400),
            SizedBox(height: 20),
            Text('POS Screen'),
          ],
        ),
      ),
    );
  }
}

class ExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expense')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/expense_image.png', width: 400,height: 400),
            SizedBox(height: 20),
            Text('Expense Screen'),
          ],
        ),
      ),
    );
  }
}

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orders')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/order_image.png', width: 400,height: 400),
            SizedBox(height: 20),
            Text('Orders Screen'),
          ],
        ),
      ),
    );
  }
}
