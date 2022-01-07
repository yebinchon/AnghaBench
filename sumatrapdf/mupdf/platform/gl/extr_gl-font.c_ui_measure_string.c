
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_chartorune (int*,char const*) ;
 scalar_t__ ui_measure_character (int) ;

float ui_measure_string(const char *str)
{
 int c;
 float x = 0;
 while (*str)
 {
  str += fz_chartorune(&c, str);
  x += ui_measure_character(c);
 }
 return x;
}
