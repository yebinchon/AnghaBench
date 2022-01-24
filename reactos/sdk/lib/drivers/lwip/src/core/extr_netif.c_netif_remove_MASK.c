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
struct netif {int flags; int /*<<< orphan*/  (* remove_callback ) (struct netif*) ;struct netif* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int NETIF_FLAG_IGMP ; 
 int /*<<< orphan*/  FUNC1 (struct netif*) ; 
 struct netif* netif_default ; 
 scalar_t__ FUNC2 (struct netif*) ; 
 struct netif* netif_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct netif*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct netif*) ; 
 int /*<<< orphan*/  FUNC7 (struct netif*) ; 

void
FUNC8(struct netif *netif)
{
  if (netif == NULL) {
    return;
  }

#if LWIP_IGMP
  /* stop IGMP processing */
  if (netif->flags & NETIF_FLAG_IGMP) {
    igmp_stop(netif);
  }
#endif /* LWIP_IGMP */
  if (FUNC2(netif)) {
    /* set netif down before removing (call callback function) */
    FUNC4(netif);
  }

  FUNC6(netif);

  /*  is it the first netif? */
  if (netif_list == netif) {
    netif_list = netif->next;
  } else {
    /*  look for netif further down the list */
    struct netif * tmpNetif;
    for (tmpNetif = netif_list; tmpNetif != NULL; tmpNetif = tmpNetif->next) {
      if (tmpNetif->next == netif) {
        tmpNetif->next = netif->next;
        break;
      }
    }
    if (tmpNetif == NULL)
      return; /*  we didn't find any netif today */
  }
  FUNC5();
  /* this netif is default? */
  if (netif_default == netif) {
    /* reset default netif */
    FUNC3(NULL);
  }
#if LWIP_NETIF_REMOVE_CALLBACK
  if (netif->remove_callback) {
    netif->remove_callback(netif);
  }
#endif /* LWIP_NETIF_REMOVE_CALLBACK */
  FUNC0( NETIF_DEBUG, ("netif_remove: removed netif\n") );
}