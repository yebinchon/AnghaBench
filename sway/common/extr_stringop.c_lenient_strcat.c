
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strcat (char*,char const*) ;

char *lenient_strcat(char *dest, const char *src) {
 if (dest && src) {
  return strcat(dest, src);
 }
 return dest;
}
