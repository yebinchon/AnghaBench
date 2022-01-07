
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* network; } ;
struct TYPE_5__ {int ipv6_privacy_extensions; } ;
typedef TYPE_2__ Link ;
typedef int IPv6PrivacyExtensions ;


 int IFF_LOOPBACK ;
 int _IPV6_PRIVACY_EXTENSIONS_INVALID ;
 int assert (TYPE_2__*) ;
 int socket_ipv6_is_supported () ;

__attribute__((used)) static IPv6PrivacyExtensions link_ipv6_privacy_extensions(Link *link) {
        assert(link);

        if (!socket_ipv6_is_supported())
                return _IPV6_PRIVACY_EXTENSIONS_INVALID;

        if (link->flags & IFF_LOOPBACK)
                return _IPV6_PRIVACY_EXTENSIONS_INVALID;

        if (!link->network)
                return _IPV6_PRIVACY_EXTENSIONS_INVALID;

        return link->network->ipv6_privacy_extensions;
}
