
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 scalar_t__ is_array (int const*) ;
 int const* type_array_get_element (int const*) ;

__attribute__((used)) static inline int last_array(const type_t *type)
{
    return is_array(type) && !is_array(type_array_get_element(type));
}
