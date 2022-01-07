
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pool ;
typedef int fz_css_selector ;
struct TYPE_4__ {int * next; int * declaration; int * selector; } ;
typedef TYPE_1__ fz_css_rule ;
typedef int fz_css_property ;
typedef int fz_context ;


 TYPE_1__* fz_pool_alloc (int *,int *,int) ;

__attribute__((used)) static fz_css_rule *fz_new_css_rule(fz_context *ctx, fz_pool *pool, fz_css_selector *selector, fz_css_property *declaration)
{
 fz_css_rule *rule = fz_pool_alloc(ctx, pool, sizeof *rule);
 rule->selector = selector;
 rule->declaration = declaration;
 rule->next = ((void*)0);
 return rule;
}
