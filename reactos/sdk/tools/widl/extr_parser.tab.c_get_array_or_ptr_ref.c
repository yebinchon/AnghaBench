
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 scalar_t__ is_array (int *) ;
 scalar_t__ is_ptr (int *) ;
 int * type_array_get_element (int *) ;
 int * type_pointer_get_ref (int *) ;

__attribute__((used)) static type_t *get_array_or_ptr_ref(type_t *type)
{
    if (is_ptr(type))
        return type_pointer_get_ref(type);
    else if (is_array(type))
        return type_array_get_element(type);
    return ((void*)0);
}
