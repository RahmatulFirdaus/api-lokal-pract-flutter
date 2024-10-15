import 'package:http/http.dart' as http;
import 'dart:convert';

class PostLokal {
  String judul, penulis;
  PostLokal(this.judul, this.penulis);

  static Future<PostLokal> postLokal(String judul, String penulis) async {
    Uri url = Uri.parse("http://kepo/books");
    var response =
        await http.post(url, body: {"judul": judul, "penulis": penulis});

    var jsonData = jsonDecode(response.body);
    return PostLokal(judul = jsonData['judul'], penulis = jsonData['penulis']);
    
  }
}
