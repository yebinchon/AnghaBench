
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int strlen (char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static bool parse_color_int(char *hexstring, uint32_t *dest) {
 if (hexstring[0] != '#') {
  return 0;
 }

 if (strlen(hexstring) != 7 && strlen(hexstring) != 9) {
  return 0;
 }

 ++hexstring;
 char *end;
 uint32_t decimal = strtol(hexstring, &end, 16);

 if (*end != '\0') {
  return 0;
 }

 if (strlen(hexstring) == 6) {

  decimal = (decimal << 8) | 0xff;
 }

 *dest = decimal;
 return 1;
}
