
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeout_event_source; } ;
typedef TYPE_1__ DnsTransaction ;


 int assert (TYPE_1__*) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void dns_transaction_stop_timeout(DnsTransaction *t) {
        assert(t);

        t->timeout_event_source = sd_event_source_unref(t->timeout_event_source);
}
