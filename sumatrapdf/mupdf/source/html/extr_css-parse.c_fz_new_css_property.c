
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pool ;
typedef int fz_css_value ;
struct TYPE_4__ {int spec; int * next; scalar_t__ important; int * value; int name; } ;
typedef TYPE_1__ fz_css_property ;
typedef int fz_context ;


 TYPE_1__* fz_pool_alloc (int *,int *,int) ;
 int fz_pool_strdup (int *,int *,char const*) ;

__attribute__((used)) static fz_css_property *fz_new_css_property(fz_context *ctx, fz_pool *pool, const char *name, fz_css_value *value, int spec)
{
 fz_css_property *prop = fz_pool_alloc(ctx, pool, sizeof *prop);
 prop->name = fz_pool_strdup(ctx, pool, name);
 prop->value = value;
 prop->spec = spec;
 prop->important = 0;
 prop->next = ((void*)0);
 return prop;
}
