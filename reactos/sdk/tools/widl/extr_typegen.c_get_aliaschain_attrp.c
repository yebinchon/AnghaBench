
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int attrs; } ;
typedef TYPE_1__ type_t ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 void* get_attrp (int ,int) ;
 scalar_t__ is_attr (int ,int) ;
 TYPE_1__* type_alias_get_aliasee (TYPE_1__ const*) ;
 scalar_t__ type_is_alias (TYPE_1__ const*) ;

__attribute__((used)) static void *get_aliaschain_attrp(const type_t *type, enum attr_type attr)
{
    const type_t *t = type;
    for (;;)
    {
        if (is_attr(t->attrs, attr))
            return get_attrp(t->attrs, attr);
        else if (type_is_alias(t))
            t = type_alias_get_aliasee(t);
        else return ((void*)0);
    }
}
