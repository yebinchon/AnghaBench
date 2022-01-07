
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FZ_RADIAN ;
 float fz_strtof (char const*,char**) ;
 int strcmp (char*,char*) ;

float
svg_parse_angle(const char *str)
{
 char *end;
 float val;

 val = fz_strtof(str, &end);
 if (end == str)
  return 0;

 if (!strcmp(end, "deg"))
  return val;

 if (!strcmp(end, "grad"))
  return val * 0.9f;

 if (!strcmp(end, "rad"))
  return val * FZ_RADIAN;

 return val;
}
