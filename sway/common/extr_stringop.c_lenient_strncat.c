
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strncat (char*,char const*,size_t) ;

char *lenient_strncat(char *dest, const char *src, size_t len) {
 if (dest && src) {
  return strncat(dest, src, len);
 }
 return dest;
}
