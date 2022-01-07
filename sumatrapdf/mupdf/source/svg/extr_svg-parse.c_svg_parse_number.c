
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fz_atof (char const*) ;
 int strcmp (char const*,char*) ;

float
svg_parse_number(const char *str, float min, float max, float inherit)
{
 float x;
 if (!strcmp(str, "inherit"))
  return inherit;
 x = fz_atof(str);
 if (x < min) return min;
 if (x > max) return max;
 return x;
}
