
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pool ;
struct TYPE_4__ {int type; int * next; int * val; int * key; } ;
typedef TYPE_1__ fz_css_condition ;
typedef int fz_context ;


 TYPE_1__* fz_pool_alloc (int *,int *,int) ;
 int * fz_pool_strdup (int *,int *,char const*) ;

__attribute__((used)) static fz_css_condition *fz_new_css_condition(fz_context *ctx, fz_pool *pool, int type, const char *key, const char *val)
{
 fz_css_condition *cond = fz_pool_alloc(ctx, pool, sizeof *cond);
 cond->type = type;
 cond->key = key ? fz_pool_strdup(ctx, pool, key) : ((void*)0);
 cond->val = val ? fz_pool_strdup(ctx, pool, val) : ((void*)0);
 cond->next = ((void*)0);
 return cond;
}
