
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int attr_list_t ;


 int ATTR_STRING ;
 scalar_t__ is_aliaschain_attr (int const*,int ) ;
 scalar_t__ is_attr (int const*,int ) ;
 scalar_t__ last_array (int const*) ;
 scalar_t__ last_ptr (int const*) ;

__attribute__((used)) static inline int is_string_type(const attr_list_t *attrs, const type_t *type)
{
    return ((is_attr(attrs, ATTR_STRING) || is_aliaschain_attr(type, ATTR_STRING))
            && (last_ptr(type) || last_array(type)));
}
