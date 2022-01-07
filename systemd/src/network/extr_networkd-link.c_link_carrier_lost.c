
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int state; int dhcp_server; scalar_t__ setting_mtu; TYPE_1__* network; } ;
struct TYPE_12__ {scalar_t__ ignore_carrier_loss; } ;
typedef TYPE_2__ Link ;


 int IN_SET (int ,int ,int ) ;
 int LINK_STATE_PENDING ;
 int LINK_STATE_UNMANAGED ;
 int assert (TYPE_2__*) ;
 scalar_t__ link_dhcp4_server_enabled (TYPE_2__*) ;
 int link_drop_config (TYPE_2__*) ;
 int link_drop_foreign_config (TYPE_2__*) ;
 int link_enter_failed (TYPE_2__*) ;
 int link_handle_bound_by_list (TYPE_2__*) ;
 int link_state_to_string (int ) ;
 int link_stop_clients (TYPE_2__*,int) ;
 int log_link_debug (TYPE_2__*,char*,int ) ;
 int sd_dhcp_server_stop (int ) ;

__attribute__((used)) static int link_carrier_lost(Link *link) {
        int r;

        assert(link);

        if (link->network && link->network->ignore_carrier_loss)
                return 0;




        if (link->setting_mtu)
                return 0;

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

        r = link_handle_bound_by_list(link);
        if (r < 0)
                return r;

        return 0;
}
