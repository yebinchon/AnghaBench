
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
typedef int sd_dhcp_lease ;
struct TYPE_11__ {int dhcp_black_listed_ip; struct TYPE_11__* network; } ;
typedef TYPE_1__ sd_dhcp_client ;
typedef TYPE_1__ Link ;


 int ADDRESS_FMT_VAL (struct in_addr) ;
 int LOG_DEBUG ;
 int LOG_LINK_INTERFACE (TYPE_1__*) ;
 int LOG_LINK_MESSAGE (TYPE_1__*,char*,int ) ;
 int UINT32_TO_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int log_link_debug_errno (TYPE_1__*,int,char*) ;
 int log_link_error_errno (TYPE_1__*,int,char*) ;
 int log_struct (int ,int ,int ) ;
 int sd_dhcp_client_get_lease (TYPE_1__*,int **) ;
 int sd_dhcp_lease_get_server_identifier (int *,struct in_addr*) ;
 scalar_t__ set_contains (int ,int ) ;

__attribute__((used)) static int dhcp_server_is_black_listed(Link *link, sd_dhcp_client *client) {
        sd_dhcp_lease *lease;
        struct in_addr addr;
        int r;

        assert(link);
        assert(link->network);
        assert(client);

        r = sd_dhcp_client_get_lease(client, &lease);
        if (r < 0)
                return log_link_error_errno(link, r, "Failed to get DHCP lease: %m");

        r = sd_dhcp_lease_get_server_identifier(lease, &addr);
        if (r < 0)
                return log_link_debug_errno(link, r, "Failed to get DHCP server ip address: %m");

        if (set_contains(link->network->dhcp_black_listed_ip, UINT32_TO_PTR(addr.s_addr))) {
                log_struct(LOG_DEBUG,
                           LOG_LINK_INTERFACE(link),
                           LOG_LINK_MESSAGE(link, "DHCPv4 ip '%u.%u.%u.%u' found in black listed ip addresses, ignoring offer",
                                            ADDRESS_FMT_VAL(addr)));
                return 1;
        }

        return 0;
}
