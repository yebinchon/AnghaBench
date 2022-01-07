
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* name; int attrs; } ;
typedef TYPE_1__ type_t ;


 int ATTR_WIREMARSHAL ;
 TYPE_1__* get_attrp (int ,int ) ;
 TYPE_1__* type_alias_get_aliasee (TYPE_1__ const*) ;
 scalar_t__ type_is_alias (TYPE_1__ const*) ;

__attribute__((used)) static type_t *get_user_type(const type_t *t, const char **pname)
{
    for (;;)
    {
        type_t *ut = get_attrp(t->attrs, ATTR_WIREMARSHAL);
        if (ut)
        {
            if (pname)
                *pname = t->name;
            return ut;
        }

        if (type_is_alias(t))
            t = type_alias_get_aliasee(t);
        else
            return ((void*)0);
    }
}
