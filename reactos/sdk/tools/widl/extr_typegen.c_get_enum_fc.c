
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int ATTR_V1ENUM ;
 unsigned char FC_ENUM16 ;
 unsigned char FC_ENUM32 ;
 scalar_t__ TYPE_ENUM ;
 int assert (int) ;
 scalar_t__ is_aliaschain_attr (int const*,int ) ;
 scalar_t__ type_get_type (int const*) ;

__attribute__((used)) static unsigned char get_enum_fc(const type_t *type)
{
    assert(type_get_type(type) == TYPE_ENUM);
    if (is_aliaschain_attr(type, ATTR_V1ENUM))
        return FC_ENUM32;
    else
        return FC_ENUM16;
}
