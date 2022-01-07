
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int answer_errno; TYPE_1__* scope; } ;
struct TYPE_8__ {scalar_t__ protocol; } ;
typedef TYPE_2__ DnsTransaction ;


 scalar_t__ DNS_PROTOCOL_LLMNR ;
 int DNS_TRANSACTION_ERRNO ;
 int DNS_TRANSACTION_NOT_FOUND ;
 scalar_t__ ERRNO_IS_DISCONNECT (int) ;
 int assert (TYPE_2__*) ;
 int dns_transaction_close_connection (TYPE_2__*) ;
 int dns_transaction_complete (TYPE_2__*,int ) ;
 int dns_transaction_retry (TYPE_2__*,int) ;

__attribute__((used)) static void on_transaction_stream_error(DnsTransaction *t, int error) {
        assert(t);

        dns_transaction_close_connection(t);

        if (ERRNO_IS_DISCONNECT(error)) {
                if (t->scope->protocol == DNS_PROTOCOL_LLMNR) {


                        dns_transaction_complete(t, DNS_TRANSACTION_NOT_FOUND);
                        return;
                }

                dns_transaction_retry(t, 1);
                return;
        }
        if (error != 0) {
                t->answer_errno = error;
                dns_transaction_complete(t, DNS_TRANSACTION_ERRNO);
        }
}
