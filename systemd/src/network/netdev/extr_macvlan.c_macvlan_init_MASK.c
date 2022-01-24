#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ NetDev ;
typedef  TYPE_1__ MacVlan ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ NETDEV_KIND_MACVLAN ; 
 int /*<<< orphan*/  _NETDEV_MACVLAN_MODE_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(NetDev *n) {
        MacVlan *m;

        FUNC2(n);

        if (n->kind == NETDEV_KIND_MACVLAN)
                m = FUNC0(n);
        else
                m = FUNC1(n);

        FUNC2(m);

        m->mode = _NETDEV_MACVLAN_MODE_INVALID;
}