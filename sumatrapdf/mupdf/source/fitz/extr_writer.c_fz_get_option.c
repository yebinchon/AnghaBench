
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;



__attribute__((used)) static const char *
fz_get_option(fz_context *ctx, const char **key, const char **val, const char *opts)
{
 if (!opts || *opts == 0)
  return ((void*)0);

 if (*opts == ',')
  ++opts;

 *key = opts;
 while (*opts != 0 && *opts != ',' && *opts != '=')
  ++opts;

 if (*opts == '=')
 {
  *val = ++opts;
  while (*opts != 0 && *opts != ',')
   ++opts;
 }
 else
 {
  *val = "yes";
 }

 return opts;
}
