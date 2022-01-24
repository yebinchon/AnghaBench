#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct netif {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  mtu; int /*<<< orphan*/  output; int /*<<< orphan*/  hwaddr_len; int /*<<< orphan*/  hwaddr; TYPE_1__* state; } ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_4__ {int /*<<< orphan*/  MTU; int /*<<< orphan*/  Address; int /*<<< orphan*/  AddressLength; } ;
typedef  TYPE_1__* PIP_INTERFACE ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF_FLAG_BROADCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPSendDataCallback ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

err_t
FUNC3(struct netif *netif)
{
    PIP_INTERFACE IF = netif->state;
    
    netif->hwaddr_len = IF->AddressLength;
    FUNC0(netif->hwaddr, IF->Address, netif->hwaddr_len);

    netif->output = TCPSendDataCallback;
    netif->mtu = IF->MTU;
    
    netif->name[0] = 'e';
    netif->name[1] = 'n';
    
    netif->flags |= NETIF_FLAG_BROADCAST;
    
    FUNC2(IF);
    
    FUNC1(IF);

    return 0;
}