
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 scalar_t__ is_array (int const*) ;
 scalar_t__ type_array_has_conformance (int const*) ;

__attribute__((used)) static inline int is_conformant_array(const type_t *t)
{
    return is_array(t) && type_array_has_conformance(t);
}
