
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; int auxiliary_result; struct TYPE_6__* auxiliary_for; } ;
typedef TYPE_1__ DnsQuery ;


 int DNS_QUERY_RESTARTED ;
 scalar_t__ DNS_TRANSACTION_SUCCESS ;
 int assert (TYPE_1__*) ;
 int dns_query_process_cname (TYPE_1__*) ;
 int resolve_service_all_complete (TYPE_1__*) ;

__attribute__((used)) static void resolve_service_hostname_complete(DnsQuery *q) {
        int r;

        assert(q);
        assert(q->auxiliary_for);

        if (q->state != DNS_TRANSACTION_SUCCESS) {
                resolve_service_all_complete(q->auxiliary_for);
                return;
        }

        r = dns_query_process_cname(q);
        if (r == DNS_QUERY_RESTARTED)
                return;


        q->auxiliary_result = r;
        resolve_service_all_complete(q->auxiliary_for);
}
