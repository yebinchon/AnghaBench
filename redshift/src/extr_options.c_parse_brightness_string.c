
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float atof (char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void
parse_brightness_string(
 const char *str, float *bright_day, float *bright_night)
{
 char *s = strchr(str, ':');
 if (s == ((void*)0)) {

  *bright_day = *bright_night = atof(str);
 } else {
  *(s++) = '\0';
  *bright_day = atof(str);
  *bright_night = atof(s);
 }
}
