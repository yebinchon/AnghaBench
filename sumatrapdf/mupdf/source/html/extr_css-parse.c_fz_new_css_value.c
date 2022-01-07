
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pool ;
struct TYPE_4__ {int type; int * next; int * args; int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_context ;


 TYPE_1__* fz_pool_alloc (int *,int *,int) ;
 int fz_pool_strdup (int *,int *,char const*) ;

__attribute__((used)) static fz_css_value *fz_new_css_value(fz_context *ctx, fz_pool *pool, int type, const char *data)
{
 fz_css_value *val = fz_pool_alloc(ctx, pool, sizeof *val);
 val->type = type;
 val->data = fz_pool_strdup(ctx, pool, data);
 val->args = ((void*)0);
 val->next = ((void*)0);
 return val;
}
