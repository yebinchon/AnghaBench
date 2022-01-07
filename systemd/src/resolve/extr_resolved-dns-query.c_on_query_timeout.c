
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int sd_event_source ;
typedef int DnsQuery ;


 int DNS_TRANSACTION_TIMEOUT ;
 int assert (int *) ;
 int dns_query_complete (int *,int ) ;

__attribute__((used)) static int on_query_timeout(sd_event_source *s, usec_t usec, void *userdata) {
        DnsQuery *q = userdata;

        assert(s);
        assert(q);

        dns_query_complete(q, DNS_TRANSACTION_TIMEOUT);
        return 0;
}
