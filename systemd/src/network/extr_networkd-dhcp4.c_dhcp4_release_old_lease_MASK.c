#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int dummy; } ;
struct TYPE_16__ {struct TYPE_16__* dhcp_lease_old; struct TYPE_16__* dhcp_lease; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,struct in_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct in_addr*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct in_addr*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 

void FUNC9(Link *link) {
        struct in_addr address = {}, address_old = {};

        FUNC0(link);

        if (!link->dhcp_lease_old)
                return;

        FUNC0(link->dhcp_lease);

        (void) FUNC7(link->dhcp_lease_old, &address_old);
        (void) FUNC7(link->dhcp_lease, &address);

        (void) FUNC4(link, link->dhcp_lease_old, &address_old, false);
        (void) FUNC3(link, link->dhcp_lease_old, &address_old, false);
        (void) FUNC2(link, link->dhcp_lease_old, &address_old, false);

        if (!FUNC5(&address_old, &address))
                (void) FUNC1(link, link->dhcp_lease_old, &address_old, NULL);

        link->dhcp_lease_old = FUNC8(link->dhcp_lease_old);
        FUNC6(link);
}