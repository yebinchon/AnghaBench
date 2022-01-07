
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float NAN ;
 int SWAY_DEBUG ;
 scalar_t__ errno ;
 float strtof (char const*,char**) ;
 int sway_log (int ,char*,char const*) ;

float parse_float(const char *value) {
 errno = 0;
 char *end;
 float flt = strtof(value, &end);
 if (*end || errno) {
  sway_log(SWAY_DEBUG, "Invalid float value '%s', defaulting to NAN", value);
  return NAN;
 }
 return flt;
}
