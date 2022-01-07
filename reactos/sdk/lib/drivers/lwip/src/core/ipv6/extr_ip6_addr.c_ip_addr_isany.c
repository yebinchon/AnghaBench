
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct ip_addr {int* addr; } ;



u8_t
ip_addr_isany(struct ip_addr *addr)
{
  if (addr == ((void*)0)) return 1;
  return((addr->addr[0] | addr->addr[1] | addr->addr[2] | addr->addr[3]) == 0);
}
