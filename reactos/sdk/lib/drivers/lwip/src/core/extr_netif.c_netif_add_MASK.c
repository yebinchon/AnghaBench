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
struct netif {int flags; int /*<<< orphan*/ * name; struct netif* next; scalar_t__ loop_cnt_current; int /*<<< orphan*/  input; scalar_t__ num; void* state; int /*<<< orphan*/ * loop_last; int /*<<< orphan*/ * loop_first; int /*<<< orphan*/ * igmp_mac_filter; int /*<<< orphan*/ * link_callback; int /*<<< orphan*/ * status_callback; int /*<<< orphan*/ * autoip; int /*<<< orphan*/ * dhcp; int /*<<< orphan*/  gw; int /*<<< orphan*/  netmask; int /*<<< orphan*/  ip_addr; } ;
typedef  int /*<<< orphan*/  netif_input_fn ;
typedef  scalar_t__ (* netif_init_fn ) (struct netif*) ;
typedef  int /*<<< orphan*/  ip_addr_t ;

/* Variables and functions */
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int NETIF_FLAG_IGMP ; 
 int /*<<< orphan*/  FUNC2 (struct netif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct netif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct netif* netif_list ; 
 int /*<<< orphan*/  netif_num ; 
 int /*<<< orphan*/  FUNC6 (struct netif*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

struct netif *
FUNC8(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
  ip_addr_t *gw, void *state, netif_init_fn init, netif_input_fn input)
{

  FUNC0("No init function given", init != NULL);

  /* reset new interface configuration state */
  FUNC5(&netif->ip_addr);
  FUNC5(&netif->netmask);
  FUNC5(&netif->gw);
  netif->flags = 0;
#if LWIP_DHCP
  /* netif not under DHCP control by default */
  netif->dhcp = NULL;
#endif /* LWIP_DHCP */
#if LWIP_AUTOIP
  /* netif not under AutoIP control by default */
  netif->autoip = NULL;
#endif /* LWIP_AUTOIP */
#if LWIP_NETIF_STATUS_CALLBACK
  netif->status_callback = NULL;
#endif /* LWIP_NETIF_STATUS_CALLBACK */
#if LWIP_NETIF_LINK_CALLBACK
  netif->link_callback = NULL;
#endif /* LWIP_NETIF_LINK_CALLBACK */
#if LWIP_IGMP
  netif->igmp_mac_filter = NULL;
#endif /* LWIP_IGMP */
#if ENABLE_LOOPBACK
  netif->loop_first = NULL;
  netif->loop_last = NULL;
#endif /* ENABLE_LOOPBACK */

  /* remember netif specific state information data */
  netif->state = state;
  netif->num = netif_num++;
  netif->input = input;
  FUNC2(netif, NULL);
#if ENABLE_LOOPBACK && LWIP_LOOPBACK_MAX_PBUFS
  netif->loop_cnt_current = 0;
#endif /* ENABLE_LOOPBACK && LWIP_LOOPBACK_MAX_PBUFS */

  FUNC6(netif, ipaddr, netmask, gw);

  /* call user specified initialization function for netif */
  if (init(netif) != ERR_OK) {
    return NULL;
  }

  /* add this netif to the list */
  netif->next = netif_list;
  netif_list = netif;
  FUNC7();

#if LWIP_IGMP
  /* start IGMP processing */
  if (netif->flags & NETIF_FLAG_IGMP) {
    igmp_start(netif);
  }
#endif /* LWIP_IGMP */

  FUNC1(NETIF_DEBUG, ("netif: added interface %c%c IP addr ",
    netif->name[0], netif->name[1]));
  FUNC4(NETIF_DEBUG, ipaddr);
  FUNC1(NETIF_DEBUG, (" netmask "));
  FUNC4(NETIF_DEBUG, netmask);
  FUNC1(NETIF_DEBUG, (" gw "));
  FUNC4(NETIF_DEBUG, gw);
  FUNC1(NETIF_DEBUG, ("\n"));
  return netif;
}