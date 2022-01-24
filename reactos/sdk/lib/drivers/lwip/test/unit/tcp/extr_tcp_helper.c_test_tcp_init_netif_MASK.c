#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct test_tcp_txcounters {struct test_tcp_txcounters* next; int /*<<< orphan*/  ip_addr; int /*<<< orphan*/  netmask; int /*<<< orphan*/  flags; int /*<<< orphan*/  output; struct test_tcp_txcounters* state; } ;
struct netif {struct netif* next; int /*<<< orphan*/  ip_addr; int /*<<< orphan*/  netmask; int /*<<< orphan*/  flags; int /*<<< orphan*/  output; struct netif* state; } ;
typedef  int /*<<< orphan*/  ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF_FLAG_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct test_tcp_txcounters*,int /*<<< orphan*/ ,int) ; 
 struct test_tcp_txcounters* netif_list ; 
 int /*<<< orphan*/  test_tcp_netif_output ; 

void FUNC2(struct netif *netif, struct test_tcp_txcounters *txcounters,
                         ip_addr_t *ip_addr, ip_addr_t *netmask)
{
  struct netif *n;
  FUNC1(netif, 0, sizeof(struct netif));
  if (txcounters != NULL) {
    FUNC1(txcounters, 0, sizeof(struct test_tcp_txcounters));
    netif->state = txcounters;
  }
  netif->output = test_tcp_netif_output;
  netif->flags |= NETIF_FLAG_UP;
  FUNC0(netif->netmask, *netmask);
  FUNC0(netif->ip_addr, *ip_addr);
  for (n = netif_list; n != NULL; n = n->next) {
    if (n == netif) {
      return;
    }
  }
  netif->next = NULL;
  netif_list = netif;
}