#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int dummy; } ;
struct TYPE_19__ {int dhcp4_configured; struct TYPE_19__* dhcp_lease; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,struct in_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct in_addr*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(Link *link) {
        struct in_addr address = {};

        FUNC0(link);
        FUNC0(link->dhcp_lease);

        FUNC8(link, "DHCP lease lost");

        link->dhcp4_configured = false;

        (void) FUNC9(link->dhcp_lease, &address);
        (void) FUNC4(link, link->dhcp_lease, &address, true);
        (void) FUNC3(link, link->dhcp_lease, &address, true);
        (void) FUNC2(link, link->dhcp_lease, &address, true);
        (void) FUNC1(link, link->dhcp_lease, &address, NULL);
        (void) FUNC6(link);
        (void) FUNC5(link);

        link->dhcp_lease = FUNC10(link->dhcp_lease);
        FUNC7(link);

        return 0;
}