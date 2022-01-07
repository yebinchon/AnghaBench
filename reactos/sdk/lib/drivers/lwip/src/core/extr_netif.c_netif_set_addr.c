
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int dummy; } ;
typedef int ip_addr_t ;


 int netif_set_gw (struct netif*,int *) ;
 int netif_set_ipaddr (struct netif*,int *) ;
 int netif_set_netmask (struct netif*,int *) ;

void
netif_set_addr(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
    ip_addr_t *gw)
{
  netif_set_ipaddr(netif, ipaddr);
  netif_set_netmask(netif, netmask);
  netif_set_gw(netif, gw);
}
