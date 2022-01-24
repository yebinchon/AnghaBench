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
struct TYPE_7__ {void* ntp_fqdn; int /*<<< orphan*/  ntp; void* domains; int /*<<< orphan*/  dns; int /*<<< orphan*/  pd; int /*<<< orphan*/  ia; int /*<<< orphan*/  serverid; } ;
typedef  TYPE_1__ sd_dhcp6_lease ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (void*) ; 

__attribute__((used)) static sd_dhcp6_lease *FUNC5(sd_dhcp6_lease *lease) {
        FUNC0(lease);

        FUNC2(lease->serverid);
        FUNC1(&lease->ia);
        FUNC1(&lease->pd);

        FUNC2(lease->dns);

        lease->domains = FUNC4(lease->domains);

        FUNC2(lease->ntp);

        lease->ntp_fqdn = FUNC4(lease->ntp_fqdn);
        return FUNC3(lease);
}