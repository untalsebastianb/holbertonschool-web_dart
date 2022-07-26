import "package:http/http.dart" as http;
import 'dart:convert' as convert;

Future<String> generateQuote(id) async {
  var url = Uri.https("breakingbadapi.com", "/api/quotes/${id}");
  try {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return "${jsonResponse[0]['author']} : ${jsonResponse[0]['quote']}";
    }
    return "";
  } catch (error) {
    return "There are no quotes";
  }
}
