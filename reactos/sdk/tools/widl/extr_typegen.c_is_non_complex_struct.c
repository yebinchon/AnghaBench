
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 scalar_t__ FC_BOGUS_STRUCT ;
 scalar_t__ TYPE_STRUCT ;
 scalar_t__ get_struct_fc (int const*) ;
 scalar_t__ type_get_type (int const*) ;

__attribute__((used)) static int is_non_complex_struct(const type_t *type)
{
    return (type_get_type(type) == TYPE_STRUCT &&
            get_struct_fc(type) != FC_BOGUS_STRUCT);
}
