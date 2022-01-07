
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* type; } ;
typedef TYPE_1__ var_t ;
struct TYPE_8__ {int attrs; } ;
typedef TYPE_2__ type_t ;


 int ATTR_CONST ;
 int FALSE ;
 int TRUE ;
 scalar_t__ is_attr (int ,int ) ;
 scalar_t__ is_ptr (TYPE_2__ const*) ;
 TYPE_2__* type_pointer_get_ref (TYPE_2__ const*) ;

int is_const_decl(const var_t *var)
{
  const type_t *t;




  for (t = var->type; ; )
  {
    if (is_attr(t->attrs, ATTR_CONST))
      return TRUE;
    else if (is_ptr(t))
      t = type_pointer_get_ref(t);
    else break;
  }
  return FALSE;
}
