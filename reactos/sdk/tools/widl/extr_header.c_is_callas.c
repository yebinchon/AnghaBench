
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_t ;
typedef int attr_list_t ;


 int ATTR_CALLAS ;
 int const* get_attrp (int const*,int ) ;

const var_t *is_callas(const attr_list_t *a)
{
  return get_attrp(a, ATTR_CALLAS);
}
