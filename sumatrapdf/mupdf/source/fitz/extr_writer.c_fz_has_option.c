
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 char* fz_get_option (int *,char const**,char const**,char const*) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

int
fz_has_option(fz_context *ctx, const char *opts, const char *key, const char **val)
{
 const char *straw;
 size_t n = strlen(key);
 while ((opts = fz_get_option(ctx, &straw, val, opts)))
  if (!strncmp(straw, key, n) && (straw[n] == '=' || straw[n] == ',' || straw[n] == 0))
   return 1;
 return 0;
}
