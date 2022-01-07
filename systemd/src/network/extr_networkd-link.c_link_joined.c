
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int flags; int configure_without_carrier; struct TYPE_15__* network; int kind; scalar_t__ bridge; scalar_t__ use_br_vlan; scalar_t__ bond; int bound_to_links; } ;
typedef TYPE_1__ Link ;


 int IFF_UP ;
 int LINK_STATE_CONFIGURING ;
 int assert (TYPE_1__*) ;
 int hashmap_isempty (int ) ;
 int link_append_to_master (TYPE_1__*,scalar_t__) ;
 int link_enter_failed (TYPE_1__*) ;
 int link_handle_bound_to_list (TYPE_1__*) ;
 int link_has_carrier (TYPE_1__*) ;
 int link_request_set_addresses (TYPE_1__*) ;
 int link_set_bond (TYPE_1__*) ;
 int link_set_bridge (TYPE_1__*) ;
 int link_set_bridge_vlan (TYPE_1__*) ;
 int link_set_state (TYPE_1__*,int ) ;
 int link_up (TYPE_1__*) ;
 int log_link_error_errno (TYPE_1__*,int,char*) ;
 scalar_t__ streq_ptr (char*,int ) ;

__attribute__((used)) static int link_joined(Link *link) {
        int r;

        assert(link);
        assert(link->network);

        if (!hashmap_isempty(link->bound_to_links)) {
                r = link_handle_bound_to_list(link);
                if (r < 0)
                        return r;
        } else if (!(link->flags & IFF_UP)) {
                r = link_up(link);
                if (r < 0) {
                        link_enter_failed(link);
                        return r;
                }
        }

        if (link->network->bridge) {
                r = link_set_bridge(link);
                if (r < 0)
                        log_link_error_errno(link, r, "Could not set bridge message: %m");

                r = link_append_to_master(link, link->network->bridge);
                if (r < 0)
                        log_link_error_errno(link, r, "Failed to add to bridge master's slave list: %m");
        }

        if (link->network->bond) {
                r = link_set_bond(link);
                if (r < 0)
                        log_link_error_errno(link, r, "Could not set bond message: %m");

                r = link_append_to_master(link, link->network->bond);
                if (r < 0)
                        log_link_error_errno(link, r, "Failed to add to bond master's slave list: %m");
        }

        if (link->network->use_br_vlan &&
            (link->network->bridge || streq_ptr("bridge", link->kind))) {
                r = link_set_bridge_vlan(link);
                if (r < 0)
                        log_link_error_errno(link, r, "Could not set bridge vlan: %m");
        }




        if (!link_has_carrier(link) && !link->network->configure_without_carrier)
                return 0;

        link_set_state(link, LINK_STATE_CONFIGURING);
        return link_request_set_addresses(link);
}
