
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int get_delegation_indirect (int const*,int *) ;

__attribute__((used)) static int need_delegation_indirect(const type_t *iface)
{
  return get_delegation_indirect(iface, ((void*)0));
}
