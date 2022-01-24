#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  arp_ip_targets; } ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_1__ Bond ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(NetDev *netdev) {
        Bond *b;

        FUNC1(netdev);
        b = FUNC0(netdev);
        FUNC1(b);

        FUNC2(b->arp_ip_targets);
}