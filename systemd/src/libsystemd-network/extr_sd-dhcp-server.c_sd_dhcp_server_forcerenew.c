
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int chaddr; int gateway; int address; } ;
struct TYPE_8__ {unsigned int pool_size; TYPE_2__ invalid_lease; TYPE_2__** bound_leases; } ;
typedef TYPE_1__ sd_dhcp_server ;
typedef TYPE_2__ DHCPLease ;


 int EINVAL ;
 int assert (TYPE_2__**) ;
 int assert_return (TYPE_1__*,int ) ;
 int log_dhcp_server (TYPE_1__*,char*) ;
 int server_send_forcerenew (TYPE_1__*,int ,int ,int ) ;

int sd_dhcp_server_forcerenew(sd_dhcp_server *server) {
        unsigned i;
        int r = 0;

        assert_return(server, -EINVAL);
        assert(server->bound_leases);

        for (i = 0; i < server->pool_size; i++) {
                DHCPLease *lease = server->bound_leases[i];

                if (!lease || lease == &server->invalid_lease)
                        continue;

                r = server_send_forcerenew(server, lease->address,
                                           lease->gateway,
                                           lease->chaddr);
                if (r < 0)
                        return r;

                log_dhcp_server(server, "FORCERENEW");
        }

        return r;
}
