
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int var_t ;
struct TYPE_4__ {int * bits; int * func_type; int * type; int * var; } ;
typedef TYPE_1__ declarator_t ;


 int * make_var (int *) ;
 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static declarator_t *make_declarator(var_t *var)
{
  declarator_t *d = xmalloc(sizeof(*d));
  d->var = var ? var : make_var(((void*)0));
  d->type = ((void*)0);
  d->func_type = ((void*)0);
  d->bits = ((void*)0);
  return d;
}
