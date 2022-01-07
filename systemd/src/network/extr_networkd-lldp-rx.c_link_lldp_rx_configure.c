
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int lldp; int mac; TYPE_1__* network; int ifindex; } ;
struct TYPE_6__ {scalar_t__ lldp_mode; } ;
typedef TYPE_2__ Link ;


 scalar_t__ LLDP_MODE_ROUTERS_ONLY ;
 int SD_LLDP_SYSTEM_CAPABILITIES_ALL ;
 int SD_LLDP_SYSTEM_CAPABILITIES_ALL_ROUTERS ;
 int link_update_lldp (TYPE_2__*) ;
 int lldp_handler ;
 int sd_lldp_attach_event (int ,int *,int ) ;
 int sd_lldp_match_capabilities (int ,int ) ;
 int sd_lldp_new (int *) ;
 int sd_lldp_set_callback (int ,int ,TYPE_2__*) ;
 int sd_lldp_set_filter_address (int ,int *) ;
 int sd_lldp_set_ifindex (int ,int ) ;

int link_lldp_rx_configure(Link *link) {
        int r;

        r = sd_lldp_new(&link->lldp);
        if (r < 0)
                return r;

        r = sd_lldp_set_ifindex(link->lldp, link->ifindex);
        if (r < 0)
                return r;

        r = sd_lldp_match_capabilities(link->lldp,
                                       link->network->lldp_mode == LLDP_MODE_ROUTERS_ONLY ?
                                       SD_LLDP_SYSTEM_CAPABILITIES_ALL_ROUTERS :
                                       SD_LLDP_SYSTEM_CAPABILITIES_ALL);
        if (r < 0)
                return r;

        r = sd_lldp_set_filter_address(link->lldp, &link->mac);
        if (r < 0)
                return r;

        r = sd_lldp_attach_event(link->lldp, ((void*)0), 0);
        if (r < 0)
                return r;

        r = sd_lldp_set_callback(link->lldp, lldp_handler, link);
        if (r < 0)
                return r;

        r = link_update_lldp(link);
        if (r < 0)
                return r;

        return 0;
}
