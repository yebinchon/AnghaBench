
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double strtod (char const*,char**) ;

__attribute__((used)) static bool parse_coords(const char *str, double *x, double *y, bool *mm) {
 *mm = 0;

 char *end;
 *x = strtod(str, &end);
 if (end[0] != 'x') {
  return 0;
 }
 ++end;

 *y = strtod(end, &end);
 if (end[0] == 'm') {

  if (end[1] != 'm') {
   return 0;
  }
  *mm = 1;
  end = &end[2];
 }
 if (end[0] != '\0') {
  return 0;
 }

 return 1;
}
