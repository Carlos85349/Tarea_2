import 'package:flutter/material.dart';

class DibujarPantalla extends StatelessWidget {
  const DibujarPantalla({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 30,
                child: Text(
                  "P",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Pascualillo",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call),
                      Text(
                        "Llamar",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.message),
                      Text(
                        "Mensaje de Texto",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.video_camera_front),
                      Text(
                        "Video",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Informacion de contacto",
                          style: TextStyle(fontSize: 18),
                        ),
                        ContactInfoRow(icon: Icons.call, text: "+504 9902-9311", label: "Celular",),
                        ContactInfoRow(icon: Icons.maps_ugc, text: "Enviar mensaje a +504 9902-9311", label: ""),
                        ContactInfoRow(icon: Icons.contact_phone, text: "Llamar a +504 9902-9311", label: ""),
                        ContactInfoRow(icon: Icons.duo, text: "Videollamar a +504 9902-9311", label: ""),
                        ContactInfoRow(icon: Icons.send_outlined, text: "Mensaje a +504 9902-9311", label: ""),
                        ContactInfoRow(icon: Icons.local_phone_outlined, text: "Llamada de voz al +504 9902-9311", label: ""),
                        ContactInfoRow(icon: Icons.video_camera_front_outlined, text: "Videollamada al +504 9902-9311", label: ""),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String label;

  const ContactInfoRow({super.key, required this.icon, required this.text, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 20),
        Text(text),
        if (label.isNotEmpty) ...[
          const SizedBox(width: 20),
          Text(label),
        ],
      ],
    );
  }
}