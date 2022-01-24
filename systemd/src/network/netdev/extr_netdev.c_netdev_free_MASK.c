#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ state; int /*<<< orphan*/  conditions; int /*<<< orphan*/  mac; int /*<<< orphan*/  ifname; int /*<<< orphan*/  description; int /*<<< orphan*/  filename; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* done ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 TYPE_10__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ _NETDEV_STATE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static NetDev *FUNC8(NetDev *netdev) {
        FUNC1(netdev);

        FUNC5(netdev);

        FUNC6(netdev);

        FUNC3(netdev->filename);

        FUNC3(netdev->description);
        FUNC3(netdev->ifname);
        FUNC3(netdev->mac);
        FUNC2(netdev->conditions);

        /* Invoke the per-kind done() destructor, but only if the state field is initialized. We conditionalize that
         * because we parse .netdev files twice: once to determine the kind (with a short, minimal NetDev structure
         * allocation, with no room for per-kind fields), and once to read the kind's properties (with a full,
         * comprehensive NetDev structure allocation with enough space for whatever the specific kind needs). Now, in
         * the first case we shouldn't try to destruct the per-kind NetDev fields on destruction, in the second case we
         * should. We use the state field to discern the two cases: it's _NETDEV_STATE_INVALID on the first "raw"
         * call. */
        if (netdev->state != _NETDEV_STATE_INVALID &&
            FUNC0(netdev) &&
            FUNC0(netdev)->done)
                FUNC0(netdev)->done(netdev);

        return FUNC4(netdev);
}