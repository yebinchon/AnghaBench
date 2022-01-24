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
struct TYPE_9__ {int /*<<< orphan*/  bound_leases; int /*<<< orphan*/  raw_option; int /*<<< orphan*/  leases_by_client_id; int /*<<< orphan*/  sip; int /*<<< orphan*/  ntp; int /*<<< orphan*/  dns; int /*<<< orphan*/  timezone; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ sd_dhcp_server ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_dhcp_server *FUNC8(sd_dhcp_server *server) {
        FUNC0(server);

        FUNC3(server, "UNREF");

        FUNC6(server);

        FUNC7(server->event);

        FUNC1(server->timezone);
        FUNC1(server->dns);
        FUNC1(server->ntp);
        FUNC1(server->sip);

        FUNC2(server->leases_by_client_id);

        FUNC5(server->raw_option);

        FUNC1(server->bound_leases);
        return FUNC4(server);
}