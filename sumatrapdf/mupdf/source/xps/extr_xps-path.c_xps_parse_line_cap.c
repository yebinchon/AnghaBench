
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
xps_parse_line_cap(char *attr)
{
 if (attr)
 {
  if (!strcmp(attr, "Flat")) return 0;
  if (!strcmp(attr, "Round")) return 1;
  if (!strcmp(attr, "Square")) return 2;
  if (!strcmp(attr, "Triangle")) return 3;
 }
 return 0;
}
