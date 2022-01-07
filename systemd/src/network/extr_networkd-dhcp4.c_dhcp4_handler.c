
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef int sd_dhcp_client ;
struct TYPE_15__ {int keep_configuration; struct TYPE_15__* network; int dhcp_lease; int dhcp_send_release; struct TYPE_15__* ipv4ll; int state; struct TYPE_15__* manager; } ;
typedef TYPE_1__ Link ;


 int ADDRESS_FAMILY_FALLBACK_IPV4 ;
 int ENOMSG ;
 int FLAGS_SET (int ,int ) ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int KEEP_CONFIGURATION_DHCP ;
 int LINK_STATE_FAILED ;
 int LINK_STATE_LINGER ;






 int assert (TYPE_1__*) ;
 int dhcp_lease_acquired (int *,TYPE_1__*) ;
 int dhcp_lease_ip_change (int *,TYPE_1__*) ;
 int dhcp_lease_lost (TYPE_1__*) ;
 int dhcp_lease_renew (int *,TYPE_1__*) ;
 int dhcp_server_is_black_listed (TYPE_1__*,int *) ;
 int link_enter_failed (TYPE_1__*) ;
 int link_ipv4ll_enabled (TYPE_1__*,int ) ;
 int log_link_debug (TYPE_1__*,char*) ;
 int log_link_notice (TYPE_1__*,char*) ;
 int log_link_warning (TYPE_1__*,char*,int) ;
 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 int sd_dhcp_client_send_release (int *) ;
 int sd_ipv4ll_start (TYPE_1__*) ;

__attribute__((used)) static int dhcp4_handler(sd_dhcp_client *client, int event, void *userdata) {
        Link *link = userdata;
        int r;

        assert(link);
        assert(link->network);
        assert(link->manager);

        if (IN_SET(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 0;

        switch (event) {
                case 128:

                        if (link_ipv4ll_enabled(link, ADDRESS_FAMILY_FALLBACK_IPV4)) {
                                assert(link->ipv4ll);

                                log_link_debug(link, "DHCP client is stopped. Acquiring IPv4 link-local address");

                                r = sd_ipv4ll_start(link->ipv4ll);
                                if (r < 0)
                                        return log_link_warning_errno(link, r, "Could not acquire IPv4 link-local address: %m");
                        }

                        if (FLAGS_SET(link->network->keep_configuration, KEEP_CONFIGURATION_DHCP)) {
                                log_link_notice(link, "DHCPv4 connection considered critical, ignoring request to reconfigure it.");
                                return 0;
                        }

                        if (link->dhcp_lease) {
                                if (link->network->dhcp_send_release)
                                        (void) sd_dhcp_client_send_release(client);

                                r = dhcp_lease_lost(link);
                                if (r < 0) {
                                        link_enter_failed(link);
                                        return r;
                                }
                        }

                        break;
                case 133:
                        if (FLAGS_SET(link->network->keep_configuration, KEEP_CONFIGURATION_DHCP)) {
                                log_link_notice(link, "DHCPv4 connection considered critical, ignoring request to reconfigure it.");
                                return 0;
                        }

                        if (link->dhcp_lease) {
                                r = dhcp_lease_lost(link);
                                if (r < 0) {
                                        link_enter_failed(link);
                                        return r;
                                }
                        }

                        break;
                case 131:
                        if (FLAGS_SET(link->network->keep_configuration, KEEP_CONFIGURATION_DHCP)) {
                                log_link_notice(link, "DHCPv4 connection considered critical, ignoring request to reconfigure it.");
                                return 0;
                        }

                        r = dhcp_lease_ip_change(client, link);
                        if (r < 0) {
                                link_enter_failed(link);
                                return r;
                        }

                        break;
                case 130:
                        r = dhcp_lease_renew(client, link);
                        if (r < 0) {
                                link_enter_failed(link);
                                return r;
                        }
                        break;
                case 132:
                        r = dhcp_lease_acquired(client, link);
                        if (r < 0) {
                                link_enter_failed(link);
                                return r;
                        }
                        break;
                case 129:
                        r = dhcp_server_is_black_listed(link, client);
                        if (r < 0)
                                return r;
                        if (r != 0)
                                return -ENOMSG;
                        break;
                default:
                        if (event < 0)
                                log_link_warning_errno(link, event, "DHCP error: Client failed: %m");
                        else
                                log_link_warning(link, "DHCP unknown event: %i", event);
                        break;
        }

        return 0;
}
