#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
struct TYPE_19__ {TYPE_1__ raw; int /*<<< orphan*/  type; } ;
struct TYPE_16__ {TYPE_7__ duid; int /*<<< orphan*/  iaid; } ;
struct TYPE_18__ {int type; TYPE_2__ ns; } ;
struct TYPE_17__ {int client_id_len; int /*<<< orphan*/  state; TYPE_4__ client_id; int /*<<< orphan*/  arp_type; int /*<<< orphan*/  mac_addr_len; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  ifindex; } ;
typedef  TYPE_3__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DHCP_STATE_INIT ; 
 int /*<<< orphan*/  DHCP_STATE_STOPPED ; 
#define  DUID_TYPE_EN 131 
#define  DUID_TYPE_LL 130 
#define  DUID_TYPE_LLT 129 
#define  DUID_TYPE_UUID 128 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_DHCP_CLIENT_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_7__*,size_t*) ; 
 int FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC7 (TYPE_7__*,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__) ; 

__attribute__((used)) static int FUNC16(
                sd_dhcp_client *client,
                bool iaid_append,
                bool iaid_set,
                uint32_t iaid,
                uint16_t duid_type,
                const void *duid,
                size_t duid_len,
                usec_t llt_time) {

        FUNC0(client);
        int r;
        size_t len;

        FUNC2(client, -EINVAL);
        FUNC2(duid_len == 0 || duid, -EINVAL);

        if (duid) {
                r = FUNC9(duid_type, duid_len, true);
                if (r < 0)
                        return r;
        }

        FUNC15(client->client_id);
        client->client_id.type = 255;

        if (iaid_append) {
                if (iaid_set)
                        client->client_id.ns.iaid = FUNC11(iaid);
                else {
                        r = FUNC8(client->ifindex, client->mac_addr,
                                                     client->mac_addr_len,
                                                     true,
                                                     &client->client_id.ns.iaid);
                        if (r < 0)
                                return r;
                }
        }

        if (duid) {
                client->client_id.ns.duid.type = FUNC10(duid_type);
                FUNC13(&client->client_id.ns.duid.raw.data, duid, duid_len);
                len = sizeof(client->client_id.ns.duid.type) + duid_len;
        } else
                switch (duid_type) {
                case DUID_TYPE_LLT:
                        if (client->mac_addr_len == 0)
                                return -EOPNOTSUPP;

                        r = FUNC6(&client->client_id.ns.duid, llt_time, client->mac_addr, client->mac_addr_len, client->arp_type, &len);
                        if (r < 0)
                                return r;
                        break;
                case DUID_TYPE_EN:
                        r = FUNC4(&client->client_id.ns.duid, &len);
                        if (r < 0)
                                return r;
                        break;
                case DUID_TYPE_LL:
                        if (client->mac_addr_len == 0)
                                return -EOPNOTSUPP;

                        r = FUNC5(&client->client_id.ns.duid, client->mac_addr, client->mac_addr_len, client->arp_type, &len);
                        if (r < 0)
                                return r;
                        break;
                case DUID_TYPE_UUID:
                        r = FUNC7(&client->client_id.ns.duid, &len);
                        if (r < 0)
                                return r;
                        break;
                default:
                        return -EINVAL;
                }

        client->client_id_len = sizeof(client->client_id.type) + len +
                                (iaid_append ? sizeof(client->client_id.ns.iaid) : 0);

        if (!FUNC1(client->state, DHCP_STATE_INIT, DHCP_STATE_STOPPED)) {
                FUNC12(client, "Configured %sDUID, restarting.", iaid_append ? "IAID+" : "");
                FUNC3(client, SD_DHCP_CLIENT_EVENT_STOP);
                FUNC14(client);
        }

        return 0;
}