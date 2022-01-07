
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;
 size_t strspn (char*,int ) ;
 int whitespace ;

void strip_whitespace(char *str) {
 size_t len = strlen(str);
 size_t start = strspn(str, whitespace);
 memmove(str, &str[start], len + 1 - start);

 if (*str) {
  for (len -= start + 1; isspace(str[len]); --len) {}
  str[len + 1] = '\0';
 }
}
