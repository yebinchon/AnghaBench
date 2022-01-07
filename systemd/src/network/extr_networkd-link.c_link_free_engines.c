
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int radv; int ndisc; int dhcp6_client; int ipv4ll; int lldp; int dhcp_routes; int dhcp_lease; int dhcp_client; int dhcp_server; } ;
typedef TYPE_1__ Link ;


 int ndisc_flush (TYPE_1__*) ;
 int sd_dhcp6_client_unref (int ) ;
 int sd_dhcp_client_unref (int ) ;
 int sd_dhcp_lease_unref (int ) ;
 int sd_dhcp_server_unref (int ) ;
 int sd_ipv4ll_unref (int ) ;
 int sd_lldp_unref (int ) ;
 int sd_ndisc_unref (int ) ;
 int sd_radv_unref (int ) ;
 int set_free (int ) ;

__attribute__((used)) static void link_free_engines(Link *link) {
        if (!link)
                return;

        link->dhcp_server = sd_dhcp_server_unref(link->dhcp_server);
        link->dhcp_client = sd_dhcp_client_unref(link->dhcp_client);
        link->dhcp_lease = sd_dhcp_lease_unref(link->dhcp_lease);
        link->dhcp_routes = set_free(link->dhcp_routes);

        link->lldp = sd_lldp_unref(link->lldp);

        ndisc_flush(link);

        link->ipv4ll = sd_ipv4ll_unref(link->ipv4ll);
        link->dhcp6_client = sd_dhcp6_client_unref(link->dhcp6_client);
        link->ndisc = sd_ndisc_unref(link->ndisc);
        link->radv = sd_radv_unref(link->radv);
}
