
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_8__ {void* id; } ;
struct TYPE_9__ {TYPE_1__ ia_pd; } ;
struct TYPE_11__ {void* id; } ;
struct TYPE_10__ {TYPE_4__ ia_na; } ;
struct TYPE_12__ {int iaid_set; TYPE_2__ ia_pd; TYPE_3__ ia_na; int mac_addr_len; int mac_addr; int ifindex; } ;
typedef TYPE_5__ sd_dhcp6_client ;


 int assert (TYPE_5__*) ;
 int dhcp_identifier_set_iaid (int ,int ,int ,int,void**) ;

__attribute__((used)) static int client_ensure_iaid(sd_dhcp6_client *client) {
        int r;
        uint32_t iaid;

        assert(client);

        if (client->iaid_set)
                return 0;

        r = dhcp_identifier_set_iaid(client->ifindex, client->mac_addr, client->mac_addr_len, 1, &iaid);
        if (r < 0)
                return r;

        client->ia_na.ia_na.id = iaid;
        client->ia_pd.ia_pd.id = iaid;
        client->iaid_set = 1;

        return 0;
}
