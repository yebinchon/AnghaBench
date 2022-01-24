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
struct TYPE_7__ {int gvrp; int mvrp; int loose_binding; int reorder_hdr; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ VLan ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VLANID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(NetDev *netdev) {
        VLan *v = FUNC0(netdev);

        FUNC1(netdev);
        FUNC1(v);

        v->id = VLANID_INVALID;
        v->gvrp = -1;
        v->mvrp = -1;
        v->loose_binding = -1;
        v->reorder_hdr = -1;
}