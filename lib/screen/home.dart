import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(253, 245, 243, 244),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 9, 26),
        elevation: 1,
        title: const Text(
          "Tableau de bord",
          style: TextStyle(color: Color.fromARGB(255, 3, 4, 86)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Visiteurs"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.qr_code_scanner),
              title: const Text("Scanner QR"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Paramètres"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "BIENVENUE MAJESTE ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                _DashboardCard(
                  title: "Total Visiteurs",
                  value: "0",
                  icon: Icons.people,
                ),
                const SizedBox(width: 16),
                _DashboardCard(
                  title: "Aujourd'hui",
                  value: "0",
                  icon: Icons.today,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Derniers visiteurs",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(child: Icon(Icons.person)),
                    title: Text("Yvan CASTANOU"),
                    subtitle: Text("Entré à 09:30"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Icon(Icons.person)),
                    title: Text("Hermann FEHA"),
                    subtitle: Text("Entré à 10:15"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _DashboardCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, size: 28, color: Colors.blueAccent),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(title, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
