
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int server; TYPE_1__* scope; } ;
struct TYPE_5__ {scalar_t__ protocol; } ;
typedef TYPE_2__ DnsTransaction ;


 scalar_t__ DNS_PROTOCOL_DNS ;
 int assert (TYPE_2__*) ;
 int dns_server_dnssec_supported (int ) ;

__attribute__((used)) static bool dns_transaction_dnssec_supported(DnsTransaction *t) {
        assert(t);




        if (t->scope->protocol != DNS_PROTOCOL_DNS)
                return 0;



        if (!t->server)
                return 1;






        return dns_server_dnssec_supported(t->server);
}
