
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int usec_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {int data; } ;
struct TYPE_19__ {TYPE_1__ raw; int type; } ;
struct TYPE_16__ {TYPE_7__ duid; int iaid; } ;
struct TYPE_18__ {int type; TYPE_2__ ns; } ;
struct TYPE_17__ {int client_id_len; int state; TYPE_4__ client_id; int arp_type; int mac_addr_len; int mac_addr; int ifindex; } ;
typedef TYPE_3__ sd_dhcp_client ;


 int DHCP_CLIENT_DONT_DESTROY (TYPE_3__*) ;
 int DHCP_STATE_INIT ;
 int DHCP_STATE_STOPPED ;




 int EINVAL ;
 int EOPNOTSUPP ;
 int IN_SET (int ,int ,int ) ;
 int SD_DHCP_CLIENT_EVENT_STOP ;
 int assert_return (TYPE_3__*,int) ;
 int client_stop (TYPE_3__*,int ) ;
 int dhcp_identifier_set_duid_en (TYPE_7__*,size_t*) ;
 int dhcp_identifier_set_duid_ll (TYPE_7__*,int ,int ,int ,size_t*) ;
 int dhcp_identifier_set_duid_llt (TYPE_7__*,int ,int ,int ,int ,size_t*) ;
 int dhcp_identifier_set_duid_uuid (TYPE_7__*,size_t*) ;
 int dhcp_identifier_set_iaid (int ,int ,int ,int,int *) ;
 int dhcp_validate_duid_len (int,size_t,int) ;
 int htobe16 (int) ;
 int htobe32 (int ) ;
 int log_dhcp_client (TYPE_3__*,char*,char*) ;
 int memcpy (int *,void const*,size_t) ;
 int sd_dhcp_client_start (TYPE_3__*) ;
 int zero (TYPE_4__) ;

__attribute__((used)) static int dhcp_client_set_iaid_duid_internal(
                sd_dhcp_client *client,
                bool iaid_append,
                bool iaid_set,
                uint32_t iaid,
                uint16_t duid_type,
                const void *duid,
                size_t duid_len,
                usec_t llt_time) {

        DHCP_CLIENT_DONT_DESTROY(client);
        int r;
        size_t len;

        assert_return(client, -EINVAL);
        assert_return(duid_len == 0 || duid, -EINVAL);

        if (duid) {
                r = dhcp_validate_duid_len(duid_type, duid_len, 1);
                if (r < 0)
                        return r;
        }

        zero(client->client_id);
        client->client_id.type = 255;

        if (iaid_append) {
                if (iaid_set)
                        client->client_id.ns.iaid = htobe32(iaid);
                else {
                        r = dhcp_identifier_set_iaid(client->ifindex, client->mac_addr,
                                                     client->mac_addr_len,
                                                     1,
                                                     &client->client_id.ns.iaid);
                        if (r < 0)
                                return r;
                }
        }

        if (duid) {
                client->client_id.ns.duid.type = htobe16(duid_type);
                memcpy(&client->client_id.ns.duid.raw.data, duid, duid_len);
                len = sizeof(client->client_id.ns.duid.type) + duid_len;
        } else
                switch (duid_type) {
                case 129:
                        if (client->mac_addr_len == 0)
                                return -EOPNOTSUPP;

                        r = dhcp_identifier_set_duid_llt(&client->client_id.ns.duid, llt_time, client->mac_addr, client->mac_addr_len, client->arp_type, &len);
                        if (r < 0)
                                return r;
                        break;
                case 131:
                        r = dhcp_identifier_set_duid_en(&client->client_id.ns.duid, &len);
                        if (r < 0)
                                return r;
                        break;
                case 130:
                        if (client->mac_addr_len == 0)
                                return -EOPNOTSUPP;

                        r = dhcp_identifier_set_duid_ll(&client->client_id.ns.duid, client->mac_addr, client->mac_addr_len, client->arp_type, &len);
                        if (r < 0)
                                return r;
                        break;
                case 128:
                        r = dhcp_identifier_set_duid_uuid(&client->client_id.ns.duid, &len);
                        if (r < 0)
                                return r;
                        break;
                default:
                        return -EINVAL;
                }

        client->client_id_len = sizeof(client->client_id.type) + len +
                                (iaid_append ? sizeof(client->client_id.ns.iaid) : 0);

        if (!IN_SET(client->state, DHCP_STATE_INIT, DHCP_STATE_STOPPED)) {
                log_dhcp_client(client, "Configured %sDUID, restarting.", iaid_append ? "IAID+" : "");
                client_stop(client, SD_DHCP_CLIENT_EVENT_STOP);
                sd_dhcp_client_start(client);
        }

        return 0;
}
