
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* type; int attrs; } ;
typedef TYPE_1__ var_t ;
struct TYPE_11__ {int attrs; } ;
typedef TYPE_2__ type_t ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 scalar_t__ is_attr (int ,int) ;
 scalar_t__ is_ptr (TYPE_2__*) ;
 TYPE_2__* type_alias_get_aliasee (TYPE_2__*) ;
 scalar_t__ type_is_alias (TYPE_2__*) ;
 TYPE_2__* type_pointer_get_ref (TYPE_2__*) ;

int is_ptrchain_attr(const var_t *var, enum attr_type t)
{
    if (is_attr(var->attrs, t))
        return 1;
    else
    {
        type_t *type = var->type;
        for (;;)
        {
            if (is_attr(type->attrs, t))
                return 1;
            else if (type_is_alias(type))
                type = type_alias_get_aliasee(type);
            else if (is_ptr(type))
                type = type_pointer_get_ref(type);
            else return 0;
        }
    }
}
