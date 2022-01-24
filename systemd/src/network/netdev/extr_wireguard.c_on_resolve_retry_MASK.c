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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_9__ {int /*<<< orphan*/  peers_with_failed_endpoint; int /*<<< orphan*/  peers_with_unresolved_endpoint; } ;
typedef  TYPE_1__ Wireguard ;
typedef  TYPE_1__ NetDev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_event_source *s, usec_t usec, void *userdata) {
        NetDev *netdev = userdata;
        Wireguard *w;

        FUNC2(netdev);
        w = FUNC1(netdev);
        FUNC2(w);

        if (!FUNC3(netdev))
                return 0;

        FUNC2(FUNC5(w->peers_with_unresolved_endpoint));

        FUNC0(w->peers_with_unresolved_endpoint, w->peers_with_failed_endpoint);

        FUNC4(netdev);

        return 0;
}