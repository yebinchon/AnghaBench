
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ protocol; } ;
typedef TYPE_1__ DnsScope ;


 scalar_t__ DNS_PROTOCOL_MDNS ;
 int MDNS_MULTICAST_IPV4_ADDRESS ;
 int MDNS_MULTICAST_IPV6_ADDRESS ;
 int assert (TYPE_1__*) ;
 int dns_scope_multicast_membership (TYPE_1__*,int,int ,int ) ;

int dns_scope_mdns_membership(DnsScope *s, bool b) {
        assert(s);

        if (s->protocol != DNS_PROTOCOL_MDNS)
                return 0;

        return dns_scope_multicast_membership(s, b, MDNS_MULTICAST_IPV4_ADDRESS, MDNS_MULTICAST_IPV6_ADDRESS);
}
