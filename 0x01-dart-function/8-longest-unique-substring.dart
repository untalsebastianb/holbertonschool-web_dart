import 'dart:math';

String longestUniqueSubstring(String str) {
  Map<String, int> dict = {};
  String output = "";
  for (int start = 0, end = 0; end < str.length; end++) {
    String currentChar = str[end];
    if (dict.containsKey(currentChar)) {
      start = [dict[currentChar]! + 1, start].reduce(max);
    }
    if (output.length < end - start + 1) {
      output = str.substring(start, end + 1);
    }
    dict[currentChar] = end;
  }
  return output;
}