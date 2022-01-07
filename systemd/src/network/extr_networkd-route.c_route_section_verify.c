
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int line; int filename; } ;
struct TYPE_8__ {scalar_t__ n_static_addresses; int filename; } ;
struct TYPE_7__ {scalar_t__ family; int gateway_onlink; int gw; int scope; int type; int scope_set; int table; int table_set; TYPE_3__* section; } ;
typedef TYPE_1__ Route ;
typedef TYPE_2__ Network ;


 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int EINVAL ;
 scalar_t__ IN_SET (int ,int ,int ,...) ;
 int RTN_ANYCAST ;
 int RTN_BROADCAST ;
 int RTN_LOCAL ;
 int RTN_NAT ;
 int RT_SCOPE_HOST ;
 int RT_SCOPE_LINK ;
 int RT_TABLE_LOCAL ;
 int SYNTHETIC_ERRNO (int) ;
 int assert (TYPE_3__*) ;
 scalar_t__ in_addr_is_null (scalar_t__,int *) ;
 int log_warning (char*,int ) ;
 int log_warning_errno (int ,char*,int ,int ) ;
 scalar_t__ section_is_invalid (TYPE_3__*) ;

int route_section_verify(Route *route, Network *network) {
        if (section_is_invalid(route->section))
                return -EINVAL;

        if (route->family == AF_UNSPEC) {
                assert(route->section);

                return log_warning_errno(SYNTHETIC_ERRNO(EINVAL),
                                         "%s: Route section without Gateway=, Destination=, Source=, "
                                         "or PreferredSource= field configured. "
                                         "Ignoring [Route] section from line %u.",
                                         route->section->filename, route->section->line);
        }

        if (route->family != AF_INET6) {
                if (!route->table_set && IN_SET(route->type, RTN_LOCAL, RTN_BROADCAST, RTN_ANYCAST, RTN_NAT))
                        route->table = RT_TABLE_LOCAL;

                if (!route->scope_set) {
                        if (IN_SET(route->type, RTN_LOCAL, RTN_NAT))
                                route->scope = RT_SCOPE_HOST;
                        else if (IN_SET(route->type, RTN_BROADCAST, RTN_ANYCAST))
                                route->scope = RT_SCOPE_LINK;
                }
        }

        if (network->n_static_addresses == 0 &&
            in_addr_is_null(route->family, &route->gw) == 0 &&
            route->gateway_onlink < 0) {
                log_warning("%s: Gateway= without static address configured. "
                            "Enabling GatewayOnLink= option.",
                            network->filename);
                route->gateway_onlink = 1;
        }

        return 0;
}
