
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 char* fz_malloc (int *,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *
fz_strdup(fz_context *ctx, const char *s)
{
 size_t len = strlen(s) + 1;
 char *ns = fz_malloc(ctx, len);
 memcpy(ns, s, len);
 return ns;
}
