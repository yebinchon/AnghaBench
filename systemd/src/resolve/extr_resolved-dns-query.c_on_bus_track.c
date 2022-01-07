
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_track ;
typedef int DnsQuery ;


 int DNS_TRANSACTION_ABORTED ;
 int assert (int *) ;
 int dns_query_complete (int *,int ) ;
 int log_debug (char*) ;

__attribute__((used)) static int on_bus_track(sd_bus_track *t, void *userdata) {
        DnsQuery *q = userdata;

        assert(t);
        assert(q);

        log_debug("Client of active query vanished, aborting query.");
        dns_query_complete(q, DNS_TRANSACTION_ABORTED);
        return 0;
}
