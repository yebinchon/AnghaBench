
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int sd_dhcp6_client ;
struct TYPE_14__ {int dhcp6_configured; int manager; int state; struct TYPE_14__* network; } ;
typedef TYPE_1__ Link ;


 scalar_t__ IN_SET (int ,int ,int ) ;
 int LINK_STATE_FAILED ;
 int LINK_STATE_LINGER ;





 int _fallthrough_ ;
 int assert (TYPE_1__*) ;
 int dhcp6_lease_address_acquired (int *,TYPE_1__*) ;
 int dhcp6_lease_information_acquired (int *,TYPE_1__*) ;
 int dhcp6_lease_pd_prefix_acquired (int *,TYPE_1__*) ;
 int dhcp6_lease_pd_prefix_lost (int *,TYPE_1__*) ;
 int dhcp6_prefix_remove_all (int ,TYPE_1__*) ;
 int link_check_ready (TYPE_1__*) ;
 int link_dirty (TYPE_1__*) ;
 int link_enter_failed (TYPE_1__*) ;
 int log_link_debug (TYPE_1__*,char*) ;
 int log_link_warning (TYPE_1__*,char*,...) ;
 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 int sd_dhcp6_client_get_lease (int *,int *) ;

__attribute__((used)) static void dhcp6_handler(sd_dhcp6_client *client, int event, void *userdata) {
        int r;
        Link *link = userdata;

        assert(link);
        assert(link->network);

        if (IN_SET(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return;

        switch(event) {
        case 128:
        case 130:
        case 129:
                if (sd_dhcp6_client_get_lease(client, ((void*)0)) >= 0)
                        log_link_warning(link, "DHCPv6 lease lost");

                (void) dhcp6_lease_pd_prefix_lost(client, link);
                (void) dhcp6_prefix_remove_all(link->manager, link);

                link_dirty(link);
                link->dhcp6_configured = 0;
                break;

        case 131:
                r = dhcp6_lease_address_acquired(client, link);
                if (r < 0) {
                        link_enter_failed(link);
                        return;
                }

                r = dhcp6_lease_pd_prefix_acquired(client, link);
                if (r < 0)
                        log_link_debug(link, "DHCPv6 did not receive prefixes to delegate");

                _fallthrough_;
        case 132:
                r = dhcp6_lease_information_acquired(client, link);
                if (r < 0) {
                        link_enter_failed(link);
                        return;
                }

                link_dirty(link);
                link->dhcp6_configured = 1;
                break;

        default:
                if (event < 0)
                        log_link_warning_errno(link, event, "DHCPv6 error: %m");
                else
                        log_link_warning(link, "DHCPv6 unknown event: %d", event);
                return;
        }

        link_check_ready(link);
}
