
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int sd_ipv4ll ;
struct TYPE_9__ {int state; struct TYPE_9__* network; } ;
typedef TYPE_1__ Link ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_FAILED ;
 int LINK_STATE_LINGER ;



 int assert (TYPE_1__*) ;
 int ipv4ll_address_claimed (int *,TYPE_1__*) ;
 int ipv4ll_address_lost (TYPE_1__*) ;
 int link_enter_failed (TYPE_1__*) ;
 int log_link_error (TYPE_1__*,char*) ;
 int log_link_warning (TYPE_1__*,char*,int) ;
 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 int sd_ipv4ll_restart (int *) ;

__attribute__((used)) static void ipv4ll_handler(sd_ipv4ll *ll, int event, void *userdata) {
        Link *link = userdata;
        int r;

        assert(link);
        assert(link->network);

        if (IN_SET(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return;

        switch(event) {
                case 128:
                        r = ipv4ll_address_lost(link);
                        if (r < 0) {
                                link_enter_failed(link);
                                return;
                        }
                        break;
                case 129:
                        r = ipv4ll_address_lost(link);
                        if (r < 0) {
                                link_enter_failed(link);
                                return;
                        }

                        r = sd_ipv4ll_restart(ll);
                        if (r < 0)
                                log_link_warning_errno(link, r, "Could not acquire IPv4 link-local address: %m");
                        break;
                case 130:
                        r = ipv4ll_address_claimed(ll, link);
                        if (r < 0) {
                                log_link_error(link, "Failed to configure ipv4ll address: %m");
                                link_enter_failed(link);
                                return;
                        }
                        break;
                default:
                        log_link_warning(link, "IPv4 link-local unknown event: %d", event);
                        break;
        }
}
