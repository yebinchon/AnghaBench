
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 scalar_t__ TYPE_BASIC ;
 scalar_t__ TYPE_BASIC_DOUBLE ;
 scalar_t__ TYPE_BASIC_FLOAT ;
 scalar_t__ type_basic_get_type (int const*) ;
 scalar_t__ type_get_type (int const*) ;

__attribute__((used)) static int is_float_type(const type_t *type)
{
    return (type_get_type(type) == TYPE_BASIC &&
        (type_basic_get_type(type) == TYPE_BASIC_FLOAT ||
         type_basic_get_type(type) == TYPE_BASIC_DOUBLE));
}
