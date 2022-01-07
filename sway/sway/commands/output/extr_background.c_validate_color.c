
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static bool validate_color(const char *color) {
 if (strlen(color) != 7 || color[0] != '#') {
  return 0;
 }

 char *ptr = ((void*)0);
 strtol(&color[1], &ptr, 16);
 return *ptr == '\0';
}
