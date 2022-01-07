
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lenient_strcat (char*,char*) ;

size_t escape_markup_text(const char *src, char *dest) {
 size_t length = 0;
 if (dest) {
  dest[0] = '\0';
 }

 while (src[0]) {
  switch (src[0]) {
  case '&':
   length += 5;
   lenient_strcat(dest, "&amp;");
   break;
  case '<':
   length += 4;
   lenient_strcat(dest, "&lt;");
   break;
  case '>':
   length += 4;
   lenient_strcat(dest, "&gt;");
   break;
  case '\'':
   length += 6;
   lenient_strcat(dest, "&apos;");
   break;
  case '"':
   length += 6;
   lenient_strcat(dest, "&quot;");
   break;
  default:
   if (dest) {
    dest[length] = *src;
    dest[length + 1] = '\0';
   }
   length += 1;
  }
  src++;
 }
 return length;
}
