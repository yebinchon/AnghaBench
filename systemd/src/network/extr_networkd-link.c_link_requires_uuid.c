
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; scalar_t__ raw_data_len; } ;
struct TYPE_10__ {int dhcp_client_identifier; struct TYPE_10__* network; struct TYPE_10__* manager; } ;
typedef TYPE_1__ Link ;
typedef TYPE_2__ DUID ;


 int DHCP_CLIENT_ID_DUID ;
 int DHCP_CLIENT_ID_DUID_ONLY ;
 scalar_t__ DUID_TYPE_UUID ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int assert (TYPE_1__*) ;
 scalar_t__ link_dhcp4_enabled (TYPE_1__*) ;
 scalar_t__ link_dhcp6_enabled (TYPE_1__*) ;
 TYPE_2__* link_get_duid (TYPE_1__*) ;
 scalar_t__ link_ipv6_accept_ra_enabled (TYPE_1__*) ;

__attribute__((used)) static bool link_requires_uuid(Link *link) {
        const DUID *duid;

        assert(link);
        assert(link->manager);
        assert(link->network);

        duid = link_get_duid(link);
        if (duid->type != DUID_TYPE_UUID || duid->raw_data_len != 0)
                return 0;

        if (link_dhcp4_enabled(link) && IN_SET(link->network->dhcp_client_identifier, DHCP_CLIENT_ID_DUID, DHCP_CLIENT_ID_DUID_ONLY))
                return 1;

        if (link_dhcp6_enabled(link) || link_ipv6_accept_ra_enabled(link))
                return 1;

        return 0;
}
