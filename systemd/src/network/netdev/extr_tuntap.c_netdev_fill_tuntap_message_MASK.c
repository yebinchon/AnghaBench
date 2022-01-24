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
struct ifreq {scalar_t__ kind; struct ifreq* ifname; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  ifr_flags; } ;
struct TYPE_4__ {scalar_t__ vnet_hdr; scalar_t__ multi_queue; int /*<<< orphan*/  packet_info; } ;
typedef  TYPE_1__ TunTap ;
typedef  struct ifreq NetDev ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_MULTI_QUEUE ; 
 int /*<<< orphan*/  IFF_NO_PI ; 
 int /*<<< orphan*/  IFF_TAP ; 
 int /*<<< orphan*/  IFF_TUN ; 
 int /*<<< orphan*/  IFF_VNET_HDR ; 
 scalar_t__ IFNAMSIZ ; 
 scalar_t__ NETDEV_KIND_TAP ; 
 TYPE_1__* FUNC0 (struct ifreq*) ; 
 TYPE_1__* FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ifreq*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(NetDev *netdev, struct ifreq *ifr) {
        TunTap *t;

        FUNC2(netdev);
        FUNC2(netdev->ifname);
        FUNC2(ifr);

        if (netdev->kind == NETDEV_KIND_TAP) {
                t = FUNC0(netdev);
                ifr->ifr_flags |= IFF_TAP;
        } else {
                t = FUNC1(netdev);
                ifr->ifr_flags |= IFF_TUN;
        }

        if (!t->packet_info)
                ifr->ifr_flags |= IFF_NO_PI;

        if (t->multi_queue)
                ifr->ifr_flags |= IFF_MULTI_QUEUE;

        if (t->vnet_hdr)
                ifr->ifr_flags |= IFF_VNET_HDR;

        FUNC3(ifr->ifr_name, netdev->ifname, IFNAMSIZ-1);

        return 0;
}