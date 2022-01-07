
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** color_names ;
 unsigned int* color_values ;
 int fz_snprintf (char*,int,char*,unsigned int) ;
 scalar_t__ nelem (char const**) ;

__attribute__((used)) static const char *name_from_hex(unsigned int hex)
{
 static char buf[10];
 int i;
 for (i = 0; i < (int)nelem(color_names); ++i)
  if (color_values[i] == hex)
   return color_names[i];
 fz_snprintf(buf, sizeof buf, "#%06x", hex & 0xffffff);
 return buf;
}
