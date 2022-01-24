#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ type; scalar_t__ raw_data_len; } ;
struct TYPE_10__ {int /*<<< orphan*/  dhcp_client_identifier; struct TYPE_10__* network; struct TYPE_10__* manager; } ;
typedef  TYPE_1__ Link ;
typedef  TYPE_2__ DUID ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP_CLIENT_ID_DUID ; 
 int /*<<< orphan*/  DHCP_CLIENT_ID_DUID_ONLY ; 
 scalar_t__ DUID_TYPE_UUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC6(Link *link) {
        const DUID *duid;

        FUNC1(link);
        FUNC1(link->manager);
        FUNC1(link->network);

        duid = FUNC4(link);
        if (duid->type != DUID_TYPE_UUID || duid->raw_data_len != 0)
                return false;

        if (FUNC2(link) && FUNC0(link->network->dhcp_client_identifier, DHCP_CLIENT_ID_DUID, DHCP_CLIENT_ID_DUID_ONLY))
                return true;

        if (FUNC3(link) || FUNC5(link))
                return true;

        return false;
}