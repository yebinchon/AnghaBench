
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ current_feature_level; int server; } ;
typedef TYPE_1__ DnsTransaction ;


 int assert (TYPE_1__*) ;
 scalar_t__ dns_server_possible_feature_level (int ) ;
 int dns_transaction_go (TYPE_1__*) ;
 int dns_transaction_shuffle_id (TYPE_1__*) ;
 int log_debug (char*) ;

__attribute__((used)) static int dns_transaction_maybe_restart(DnsTransaction *t) {
        int r;

        assert(t);



        if (!t->server)
                return 0;

        if (t->current_feature_level <= dns_server_possible_feature_level(t->server))
                return 0;







        log_debug("Server feature level is now lower than when we began our transaction. Restarting with new ID.");
        dns_transaction_shuffle_id(t);

        r = dns_transaction_go(t);
        if (r < 0)
                return r;

        return 1;
}
