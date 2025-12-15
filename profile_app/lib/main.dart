import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 1 Profile',
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 280, // giống khung điện thoại
          height: 540,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: const Offset(0, 10),
                color: Colors.black.withOpacity(0.15),
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(height: 16),

              // hàng nút back & edit
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    _RoundIconButton(icon: Icons.arrow_back_ios_new_rounded),
                    _RoundIconButton(icon: Icons.edit_rounded),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // avatar tròn
              const CircleAvatar(
                radius: 56,
                backgroundImage: AssetImage(
                  'assets/images/avatar.jpg',
                ),
              ),

              const SizedBox(height: 24),

              // tên
              const Text(
                'Johan Smith',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // địa điểm
              const Text(
                'California, USA',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoundIconButton extends StatelessWidget {
  final IconData icon;
  const _RoundIconButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            offset: const Offset(0, 3),
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Icon(
        icon,
        size: 18,
      ),
    );
  }
}
