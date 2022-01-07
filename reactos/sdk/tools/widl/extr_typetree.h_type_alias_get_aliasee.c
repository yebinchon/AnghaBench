
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* orig; } ;
typedef TYPE_1__ type_t ;


 int assert (int ) ;
 int type_is_alias (TYPE_1__ const*) ;

__attribute__((used)) static inline type_t *type_alias_get_aliasee(const type_t *type)
{
    assert(type_is_alias(type));
    return type->orig;
}
