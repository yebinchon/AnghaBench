
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* orig; scalar_t__ is_alias; } ;
typedef TYPE_1__ type_t ;



__attribute__((used)) static inline type_t *type_get_real_type(const type_t *type)
{
    if (type->is_alias)
        return type_get_real_type(type->orig);
    else
        return (type_t *)type;
}
