
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; struct TYPE_7__* network; } ;
typedef TYPE_1__ Link ;


 int LINK_STATE_CONFIGURED ;
 scalar_t__ LINK_STATE_CONFIGURING ;
 int assert (TYPE_1__*) ;
 int link_dirty (TYPE_1__*) ;
 int link_join_netdevs_after_configured (TYPE_1__*) ;
 int link_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void link_enter_configured(Link *link) {
        assert(link);
        assert(link->network);

        if (link->state != LINK_STATE_CONFIGURING)
                return;

        link_set_state(link, LINK_STATE_CONFIGURED);

        (void) link_join_netdevs_after_configured(link);

        link_dirty(link);
}
