#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mtu; int /*<<< orphan*/  kind; scalar_t__ mac; } ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(NetDev *netdev, const char *filename) {
        FUNC0(netdev);

        if (netdev->mtu != 0)
                FUNC1(netdev,
                                   "MTUBytes= configured for %s device in %s will be ignored.\n"
                                   "Please set it in the corresponding .network file.",
                                   FUNC2(netdev->kind), filename);

        if (netdev->mac)
                FUNC1(netdev,
                                   "MACAddress= configured for %s device in %s will be ignored.\n"
                                   "Please set it in the corresponding .network file.",
                                   FUNC2(netdev->kind), filename);

        return 0;
}