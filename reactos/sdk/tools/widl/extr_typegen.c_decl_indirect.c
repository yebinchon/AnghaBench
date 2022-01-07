
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int TRUE ;
 scalar_t__ TYPE_ARRAY ;
 scalar_t__ TYPE_BASIC ;
 scalar_t__ TYPE_ENUM ;
 scalar_t__ TYPE_POINTER ;
 scalar_t__ is_user_type (int const*) ;
 scalar_t__ type_get_type (int const*) ;

int decl_indirect(const type_t *t)
{
    if (is_user_type(t))
        return TRUE;
    return (type_get_type(t) != TYPE_BASIC &&
            type_get_type(t) != TYPE_ENUM &&
            type_get_type(t) != TYPE_POINTER &&
            type_get_type(t) != TYPE_ARRAY);
}
