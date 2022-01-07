
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 scalar_t__ TYPE_ARRAY ;
 scalar_t__ type_get_type (int const*) ;

__attribute__((used)) static inline int is_array(const type_t *t)
{
    return type_get_type(t) == TYPE_ARRAY;
}
