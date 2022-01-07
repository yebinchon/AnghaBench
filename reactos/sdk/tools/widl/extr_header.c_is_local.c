
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int attr_list_t ;


 int ATTR_LOCAL ;
 int is_attr (int const*,int ) ;

int is_local(const attr_list_t *a)
{
  return is_attr(a, ATTR_LOCAL);
}
