
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pool ;
struct TYPE_4__ {int * next; int * right; int * left; int * cond; scalar_t__ combine; int * name; } ;
typedef TYPE_1__ fz_css_selector ;
typedef int fz_context ;


 TYPE_1__* fz_pool_alloc (int *,int *,int) ;
 int * fz_pool_strdup (int *,int *,char const*) ;

__attribute__((used)) static fz_css_selector *fz_new_css_selector(fz_context *ctx, fz_pool *pool, const char *name)
{
 fz_css_selector *sel = fz_pool_alloc(ctx, pool, sizeof *sel);
 sel->name = name ? fz_pool_strdup(ctx, pool, name) : ((void*)0);
 sel->combine = 0;
 sel->cond = ((void*)0);
 sel->left = ((void*)0);
 sel->right = ((void*)0);
 sel->next = ((void*)0);
 return sel;
}
