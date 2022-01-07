
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Link ;
typedef int DnsServer ;


 scalar_t__ DNSSEC_NO ;
 int assert (int *) ;
 int dns_server_dnssec_supported (int *) ;
 int * link_get_dns_server (int *) ;
 scalar_t__ link_get_dnssec_mode (int *) ;

bool link_dnssec_supported(Link *l) {
        DnsServer *server;

        assert(l);

        if (link_get_dnssec_mode(l) == DNSSEC_NO)
                return 0;

        server = link_get_dns_server(l);
        if (server)
                return dns_server_dnssec_supported(server);

        return 1;
}
