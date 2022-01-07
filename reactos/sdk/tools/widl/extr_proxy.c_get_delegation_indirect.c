
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 scalar_t__ need_delegation (int const*) ;
 int * type_iface_get_inherit (int const*) ;

__attribute__((used)) static int get_delegation_indirect(const type_t *iface, const type_t ** delegate_to)
{
  const type_t * cur_iface;
  for (cur_iface = iface; cur_iface != ((void*)0); cur_iface = type_iface_get_inherit(cur_iface))
    if (need_delegation(cur_iface))
    {
      if(delegate_to)
        *delegate_to = type_iface_get_inherit(cur_iface);
      return 1;
    }
  return 0;
}
