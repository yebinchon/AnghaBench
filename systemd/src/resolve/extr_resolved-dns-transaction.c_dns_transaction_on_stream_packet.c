
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ state; int block_gc; int scope; } ;
typedef TYPE_1__ DnsTransaction ;
typedef TYPE_1__ DnsPacket ;


 int DNS_TRANSACTION_INVALID_REPLY ;
 scalar_t__ DNS_TRANSACTION_PENDING ;
 int assert (TYPE_1__*) ;
 scalar_t__ dns_packet_validate_reply (TYPE_1__*) ;
 int dns_scope_check_conflicts (int ,TYPE_1__*) ;
 int dns_transaction_close_connection (TYPE_1__*) ;
 int dns_transaction_complete (TYPE_1__*,int ) ;
 int dns_transaction_gc (TYPE_1__*) ;
 int dns_transaction_process_reply (TYPE_1__*,TYPE_1__*) ;
 int log_debug (char*) ;

__attribute__((used)) static int dns_transaction_on_stream_packet(DnsTransaction *t, DnsPacket *p) {
        assert(t);
        assert(p);

        dns_transaction_close_connection(t);

        if (dns_packet_validate_reply(p) <= 0) {
                log_debug("Invalid TCP reply packet.");
                dns_transaction_complete(t, DNS_TRANSACTION_INVALID_REPLY);
                return 0;
        }

        dns_scope_check_conflicts(t->scope, p);

        t->block_gc++;
        dns_transaction_process_reply(t, p);
        t->block_gc--;




        if (t->state == DNS_TRANSACTION_PENDING)
                dns_transaction_complete(t, DNS_TRANSACTION_INVALID_REPLY);
        else
                dns_transaction_gc(t);

        return 0;
}
