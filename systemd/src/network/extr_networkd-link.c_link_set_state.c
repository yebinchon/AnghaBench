
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
typedef scalar_t__ LinkState ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int link_send_changed (TYPE_1__*,char*,int *) ;
 int link_state_to_string (scalar_t__) ;
 int log_link_debug (TYPE_1__*,char*,int ,int ) ;

void link_set_state(Link *link, LinkState state) {
        assert(link);

        if (link->state == state)
                return;

        log_link_debug(link, "State changed: %s -> %s",
                       link_state_to_string(link->state),
                       link_state_to_string(state));

        link->state = state;

        link_send_changed(link, "AdministrativeState", ((void*)0));
}
