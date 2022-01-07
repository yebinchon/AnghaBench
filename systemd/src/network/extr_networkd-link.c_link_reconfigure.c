
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {TYPE_1__* network; int state; int dhcp_server; int bssid; int ssid; int wlan_iftype; int mac; int ifname; int sd_device; int manager; } ;
struct TYPE_23__ {int filename; scalar_t__ unmanaged; } ;
typedef TYPE_1__ Network ;
typedef TYPE_2__ Link ;


 int ENOENT ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_INITIALIZED ;
 int LINK_STATE_LINGER ;
 int LINK_STATE_PENDING ;
 int LINK_STATE_UNMANAGED ;
 int link_configure (TYPE_2__*) ;
 int link_configure_duid (TYPE_2__*) ;
 scalar_t__ link_dhcp4_server_enabled (TYPE_2__*) ;
 int link_drop_config (TYPE_2__*) ;
 int link_drop_foreign_config (TYPE_2__*) ;
 int link_enter_failed (TYPE_2__*) ;
 int link_enter_unmanaged (TYPE_2__*) ;
 int link_free_carrier_maps (TYPE_2__*) ;
 int link_free_engines (TYPE_2__*) ;
 int link_new_carrier_maps (TYPE_2__*) ;
 int link_set_state (TYPE_2__*,int ) ;
 int link_state_to_string (int ) ;
 int link_stop_clients (TYPE_2__*,int) ;
 int log_link_debug (TYPE_2__*,char*,int ) ;
 int log_link_info (TYPE_2__*,char*,int ) ;
 int network_apply (TYPE_1__*,TYPE_2__*) ;
 int network_get (int ,int ,int ,int *,int ,int ,int *,TYPE_1__**) ;
 TYPE_1__* network_unref (TYPE_1__*) ;
 int sd_dhcp_server_stop (int ) ;

int link_reconfigure(Link *link, bool force) {
        Network *network;
        int r;

        if (IN_SET(link->state, LINK_STATE_PENDING, LINK_STATE_LINGER))
                return 0;

        r = network_get(link->manager, link->sd_device, link->ifname,
                        &link->mac, link->wlan_iftype, link->ssid, &link->bssid, &network);
        if (r == -ENOENT) {
                link_enter_unmanaged(link);
                return 0;
        } else if (r == 0 && network->unmanaged) {
                link_enter_unmanaged(link);
                return 0;
        } else if (r < 0)
                return r;

        if (link->network == network && !force)
                return 0;

        log_link_info(link, "Re-configuring with %s", network->filename);


        r = link_stop_clients(link, 0);
        if (r < 0) {
                link_enter_failed(link);
                return r;
        }

        if (link_dhcp4_server_enabled(link))
                (void) sd_dhcp_server_stop(link->dhcp_server);

        r = link_drop_config(link);
        if (r < 0)
                return r;

        if (!IN_SET(link->state, LINK_STATE_UNMANAGED, LINK_STATE_PENDING)) {
                log_link_debug(link, "State is %s, dropping config", link_state_to_string(link->state));
                r = link_drop_foreign_config(link);
                if (r < 0)
                        return r;
        }

        link_free_carrier_maps(link);
        link_free_engines(link);
        link->network = network_unref(link->network);


        r = network_apply(network, link);
        if (r < 0)
                return r;

        r = link_new_carrier_maps(link);
        if (r < 0)
                return r;

        link_set_state(link, LINK_STATE_INITIALIZED);



        r = link_configure_duid(link);
        if (r <= 0)
                return r;

        r = link_configure(link);
        if (r < 0)
                return r;

        return 0;
}
