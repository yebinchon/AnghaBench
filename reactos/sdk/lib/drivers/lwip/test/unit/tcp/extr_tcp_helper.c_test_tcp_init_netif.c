
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_tcp_txcounters {struct test_tcp_txcounters* next; int ip_addr; int netmask; int flags; int output; struct test_tcp_txcounters* state; } ;
struct netif {struct netif* next; int ip_addr; int netmask; int flags; int output; struct netif* state; } ;
typedef int ip_addr_t ;


 int NETIF_FLAG_UP ;
 int ip_addr_copy (int ,int ) ;
 int memset (struct test_tcp_txcounters*,int ,int) ;
 struct test_tcp_txcounters* netif_list ;
 int test_tcp_netif_output ;

void test_tcp_init_netif(struct netif *netif, struct test_tcp_txcounters *txcounters,
                         ip_addr_t *ip_addr, ip_addr_t *netmask)
{
  struct netif *n;
  memset(netif, 0, sizeof(struct netif));
  if (txcounters != ((void*)0)) {
    memset(txcounters, 0, sizeof(struct test_tcp_txcounters));
    netif->state = txcounters;
  }
  netif->output = test_tcp_netif_output;
  netif->flags |= NETIF_FLAG_UP;
  ip_addr_copy(netif->netmask, *netmask);
  ip_addr_copy(netif->ip_addr, *ip_addr);
  for (n = netif_list; n != ((void*)0); n = n->next) {
    if (n == netif) {
      return;
    }
  }
  netif->next = ((void*)0);
  netif_list = netif;
}
