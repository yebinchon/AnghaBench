
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

char *parse_font(const char *font) {
 char *new_font = ((void*)0);
 if (strncmp("pango:", font, 6) == 0) {
  font += 6;
 }
 new_font = strdup(font);
 return new_font;
}
