
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pool ;
typedef int fz_context ;


 char* fz_pool_alloc (int *,int *,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *fz_pool_strdup(fz_context *ctx, fz_pool *pool, const char *s)
{
 size_t n = strlen(s) + 1;
 char *p = fz_pool_alloc(ctx, pool, n);
 memcpy(p, s, n);
 return p;
}
