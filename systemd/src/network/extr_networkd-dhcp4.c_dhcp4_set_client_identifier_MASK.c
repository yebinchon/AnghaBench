#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/  raw_data_len; int /*<<< orphan*/ * raw_data; int /*<<< orphan*/  type; int /*<<< orphan*/  llt_time; } ;
struct TYPE_13__ {int dhcp_client_identifier; int /*<<< orphan*/  mac; struct TYPE_13__* dhcp_client; int /*<<< orphan*/  iaid; struct TYPE_13__* network; int /*<<< orphan*/  iaid_set; } ;
typedef  TYPE_1__ Link ;
typedef  TYPE_2__ DUID ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
#define  DHCP_CLIENT_ID_DUID 130 
#define  DHCP_CLIENT_ID_DUID_ONLY 129 
#define  DHCP_CLIENT_ID_MAC 128 
 int /*<<< orphan*/  DUID_TYPE_LLT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int,char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(Link *link) {
        int r;

        FUNC0(link);
        FUNC0(link->network);
        FUNC0(link->dhcp_client);

        switch (link->network->dhcp_client_identifier) {
        case DHCP_CLIENT_ID_DUID: {
                /* If configured, apply user specified DUID and IAID */
                const DUID *duid = FUNC2(link);

                if (duid->type == DUID_TYPE_LLT && duid->raw_data_len == 0)
                        r = FUNC8(link->dhcp_client,
                                                             link->network->iaid_set,
                                                             link->network->iaid,
                                                             duid->llt_time);
                else
                        r = FUNC7(link->dhcp_client,
                                                         link->network->iaid_set,
                                                         link->network->iaid,
                                                         duid->type,
                                                         duid->raw_data_len > 0 ? duid->raw_data : NULL,
                                                         duid->raw_data_len);
                if (r < 0)
                        return FUNC3(link, r, "DHCP4 CLIENT: Failed to set IAID+DUID: %m");
                break;
        }
        case DHCP_CLIENT_ID_DUID_ONLY: {
                /* If configured, apply user specified DUID */
                const DUID *duid = FUNC2(link);

                if (duid->type == DUID_TYPE_LLT && duid->raw_data_len == 0)
                        r = FUNC6(link->dhcp_client,
                                                        duid->llt_time);
                else
                        r = FUNC5(link->dhcp_client,
                                                    duid->type,
                                                    duid->raw_data_len > 0 ? duid->raw_data : NULL,
                                                    duid->raw_data_len);
                if (r < 0)
                        return FUNC3(link, r, "DHCP4 CLIENT: Failed to set DUID: %m");
                break;
        }
        case DHCP_CLIENT_ID_MAC:
                r = FUNC4(link->dhcp_client,
                                                 ARPHRD_ETHER,
                                                 (const uint8_t *) &link->mac,
                                                 sizeof(link->mac));
                if (r < 0)
                        return FUNC3(link, r, "DHCP4 CLIENT: Failed to set client ID: %m");
                break;
        default:
                FUNC1("Unknown client identifier type.");
        }

        return 0;
}