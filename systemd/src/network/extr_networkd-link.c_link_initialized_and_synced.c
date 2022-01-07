
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int flags; int bssid; int ssid; int wlan_iftype; int mac; struct TYPE_20__* ifname; int sd_device; struct TYPE_20__* manager; int network; int state; } ;
struct TYPE_19__ {scalar_t__ link_local; scalar_t__ dhcp; scalar_t__ dhcp_server; scalar_t__ unmanaged; } ;
typedef TYPE_1__ Network ;
typedef TYPE_2__ Link ;


 scalar_t__ ADDRESS_FAMILY_NO ;
 int ENOENT ;
 int IFF_LOOPBACK ;
 int IN_SET (int ,int ,int ) ;
 int LINK_STATE_INITIALIZED ;
 int LINK_STATE_PENDING ;
 int assert (TYPE_2__*) ;
 int link_configure (TYPE_2__*) ;
 int link_configure_duid (TYPE_2__*) ;
 int link_enter_unmanaged (TYPE_2__*) ;
 int link_handle_bound_by_list (TYPE_2__*) ;
 int link_new_bound_by_list (TYPE_2__*) ;
 int link_new_bound_to_list (TYPE_2__*) ;
 int link_set_state (TYPE_2__*,int ) ;
 int log_link_debug (TYPE_2__*,char*) ;
 int network_apply (TYPE_1__*,TYPE_2__*) ;
 int network_get (TYPE_2__*,int ,TYPE_2__*,int *,int ,int ,int *,TYPE_1__**) ;
 int wifi_get_info (TYPE_2__*) ;

__attribute__((used)) static int link_initialized_and_synced(Link *link) {
        Network *network;
        int r;

        assert(link);
        assert(link->ifname);
        assert(link->manager);



        if (!IN_SET(link->state, LINK_STATE_PENDING, LINK_STATE_INITIALIZED))
                return 0;

        log_link_debug(link, "Link state is up-to-date");
        link_set_state(link, LINK_STATE_INITIALIZED);

        r = link_new_bound_by_list(link);
        if (r < 0)
                return r;

        r = link_handle_bound_by_list(link);
        if (r < 0)
                return r;

        if (!link->network) {
                r = wifi_get_info(link);
                if (r < 0)
                        return r;

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

                if (link->flags & IFF_LOOPBACK) {
                        if (network->link_local != ADDRESS_FAMILY_NO)
                                log_link_debug(link, "Ignoring link-local autoconfiguration for loopback link");

                        if (network->dhcp != ADDRESS_FAMILY_NO)
                                log_link_debug(link, "Ignoring DHCP clients for loopback link");

                        if (network->dhcp_server)
                                log_link_debug(link, "Ignoring DHCP server for loopback link");
                }

                r = network_apply(network, link);
                if (r < 0)
                        return r;
        }

        r = link_new_bound_to_list(link);
        if (r < 0)
                return r;



        r = link_configure_duid(link);
        if (r <= 0)
                return r;

        r = link_configure(link);
        if (r < 0)
                return r;

        return 0;
}
