
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int write_queue; int transactions; } ;
struct TYPE_7__ {int dns_udp_fd; int dns_udp_event_source; TYPE_3__* stream; int sent; } ;
typedef TYPE_1__ DnsTransaction ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int dns_packet_unref (int ) ;
 TYPE_3__* dns_stream_unref (TYPE_3__*) ;
 int ordered_set_remove (int ,int ) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int transactions_by_stream ;

__attribute__((used)) static void dns_transaction_close_connection(DnsTransaction *t) {
        assert(t);

        if (t->stream) {

                LIST_REMOVE(transactions_by_stream, t->stream->transactions, t);


                dns_packet_unref(ordered_set_remove(t->stream->write_queue, t->sent));

                t->stream = dns_stream_unref(t->stream);
        }

        t->dns_udp_event_source = sd_event_source_unref(t->dns_udp_event_source);
        t->dns_udp_fd = safe_close(t->dns_udp_fd);
}
