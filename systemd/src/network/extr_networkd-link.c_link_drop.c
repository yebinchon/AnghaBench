
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; int state_file; TYPE_1__* network; } ;
struct TYPE_9__ {int bond; int bridge; } ;
typedef TYPE_2__ Link ;


 scalar_t__ LINK_STATE_LINGER ;
 int link_detach_from_manager (TYPE_2__*) ;
 int link_drop_from_master (TYPE_2__*,int ) ;
 int link_free_carrier_maps (TYPE_2__*) ;
 int link_set_state (TYPE_2__*,scalar_t__) ;
 int log_link_debug (TYPE_2__*,char*) ;
 int unlink (int ) ;

void link_drop(Link *link) {
        if (!link || link->state == LINK_STATE_LINGER)
                return;

        link_set_state(link, LINK_STATE_LINGER);

        link_free_carrier_maps(link);

        if (link->network) {
                link_drop_from_master(link, link->network->bridge);
                link_drop_from_master(link, link->network->bond);
        }

        log_link_debug(link, "Link removed");

        (void) unlink(link->state_file);
        link_detach_from_manager(link);
}
