
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DnsScopeMatch ;


 scalar_t__ DNS_SCOPE_YES_BASE ;
 scalar_t__ _DNS_SCOPE_MATCH_INVALID ;
 int assert (char const*) ;
 scalar_t__ dns_name_endswith (char const*,char*) ;

__attribute__((used)) static DnsScopeMatch accept_link_local_reverse_lookups(const char *domain) {
        assert(domain);

        if (dns_name_endswith(domain, "254.169.in-addr.arpa") > 0)
                return DNS_SCOPE_YES_BASE + 4;

        if (dns_name_endswith(domain, "8.e.f.ip6.arpa") > 0 ||
            dns_name_endswith(domain, "9.e.f.ip6.arpa") > 0 ||
            dns_name_endswith(domain, "a.e.f.ip6.arpa") > 0 ||
            dns_name_endswith(domain, "b.e.f.ip6.arpa") > 0)
                return DNS_SCOPE_YES_BASE + 5;

        return _DNS_SCOPE_MATCH_INVALID;
}
