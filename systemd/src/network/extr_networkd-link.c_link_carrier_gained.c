
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int state; } ;
typedef TYPE_1__ Link ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_CONFIGURED ;
 int LINK_STATE_CONFIGURING ;
 int assert (TYPE_1__*) ;
 int link_acquire_conf (TYPE_1__*) ;
 int link_enter_failed (TYPE_1__*) ;
 int link_handle_bound_by_list (TYPE_1__*) ;
 int link_reconfigure (TYPE_1__*,int) ;
 int link_request_set_addresses (TYPE_1__*) ;
 int link_set_state (TYPE_1__*,int ) ;
 int wifi_get_info (TYPE_1__*) ;

__attribute__((used)) static int link_carrier_gained(Link *link) {
        int r;

        assert(link);

        r = wifi_get_info(link);
        if (r < 0)
                return r;
        if (r > 0) {
                r = link_reconfigure(link, 0);
                if (r < 0)
                        return r;
        }

        if (IN_SET(link->state, LINK_STATE_CONFIGURING, LINK_STATE_CONFIGURED)) {
                r = link_acquire_conf(link);
                if (r < 0) {
                        link_enter_failed(link);
                        return r;
                }

                link_set_state(link, LINK_STATE_CONFIGURING);
                r = link_request_set_addresses(link);
                if (r < 0)
                        return r;
        }

        r = link_handle_bound_by_list(link);
        if (r < 0)
                return r;

        return 0;
}
