
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char const* name; int attrs; } ;
typedef TYPE_1__ type_t ;


 int ATTR_CONTEXTHANDLE ;
 int assert (int ) ;
 scalar_t__ is_attr (int ,int ) ;
 scalar_t__ is_ptr (TYPE_1__ const*) ;
 TYPE_1__* type_alias_get_aliasee (TYPE_1__ const*) ;
 scalar_t__ type_is_alias (TYPE_1__ const*) ;
 TYPE_1__* type_pointer_get_ref (TYPE_1__ const*) ;

__attribute__((used)) static const char *get_context_handle_type_name(const type_t *type)
{
    const type_t *t;
    for (t = type;
         is_ptr(t) || type_is_alias(t);
         t = type_is_alias(t) ? type_alias_get_aliasee(t) : type_pointer_get_ref(t))
        if (is_attr(t->attrs, ATTR_CONTEXTHANDLE))
            return t->name;
    assert(0);
    return ((void*)0);
}
