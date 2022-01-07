
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int kind; } ;
typedef TYPE_1__ Link ;


 int IFF_UP ;
 int LINK_STATE_CONFIGURING ;
 int link_down (TYPE_1__*,int ) ;
 int link_down_handler ;
 int link_enter_failed (TYPE_1__*) ;
 int link_set_can (TYPE_1__*) ;
 int link_set_state (TYPE_1__*,int ) ;
 int link_up_can (TYPE_1__*) ;
 scalar_t__ streq_ptr (int ,char*) ;

int link_configure_can(Link *link) {
        int r;

        link_set_state(link, LINK_STATE_CONFIGURING);

        if (streq_ptr(link->kind, "can")) {

                if ((link->flags & IFF_UP)) {
                        r = link_down(link, link_down_handler);
                        if (r < 0) {
                                link_enter_failed(link);
                                return r;
                        }
                } else {
                        r = link_set_can(link);
                        if (r < 0) {
                                link_enter_failed(link);
                                return r;
                        }
                }

                return 0;
        }

        if (!(link->flags & IFF_UP)) {
                r = link_up_can(link);
                if (r < 0) {
                        link_enter_failed(link);
                        return r;
                }
        }

        return 0;
}
