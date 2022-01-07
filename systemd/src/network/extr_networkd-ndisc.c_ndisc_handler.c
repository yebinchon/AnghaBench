
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sd_ndisc_router ;
typedef int sd_ndisc_event ;
typedef int sd_ndisc ;
struct TYPE_6__ {int ndisc_configured; int state; } ;
typedef TYPE_1__ Link ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_FAILED ;
 int LINK_STATE_LINGER ;


 int assert (TYPE_1__*) ;
 int link_check_ready (TYPE_1__*) ;
 int log_link_warning (TYPE_1__*,char*,int) ;
 int ndisc_router_handler (TYPE_1__*,int *) ;

__attribute__((used)) static void ndisc_handler(sd_ndisc *nd, sd_ndisc_event event, sd_ndisc_router *rt, void *userdata) {
        Link *link = userdata;

        assert(link);

        if (IN_SET(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return;

        switch (event) {

        case 129:
                (void) ndisc_router_handler(link, rt);
                break;

        case 128:
                link->ndisc_configured = 1;
                link_check_ready(link);

                break;
        default:
                log_link_warning(link, "IPv6 Neighbor Discovery unknown event: %d", event);
        }
}
