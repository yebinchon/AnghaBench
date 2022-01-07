
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ protocol; } ;
typedef TYPE_1__ DnsScope ;


 scalar_t__ DNS_PROTOCOL_DNS ;
 int assert (TYPE_1__*) ;
 int dns_name_is_single_label (char const*) ;

bool dns_scope_name_needs_search_domain(DnsScope *s, const char *name) {
        assert(s);

        if (s->protocol != DNS_PROTOCOL_DNS)
                return 0;

        return dns_name_is_single_label(name);
}
