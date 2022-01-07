
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int queries; } ;
struct TYPE_16__ {TYPE_2__* manager; int request_address_string; TYPE_7__* request_dns_stream; int reply_dns_packet; int request_dns_packet; int bus_track; int request; int question_utf8; int question_idna; TYPE_1__* auxiliary_for; struct TYPE_16__* auxiliary_queries; } ;
struct TYPE_15__ {int n_dns_queries; int dns_queries; } ;
struct TYPE_14__ {scalar_t__ n_auxiliary_queries; int auxiliary_queries; } ;
typedef TYPE_3__ DnsQuery ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int assert (int) ;
 int auxiliary_queries ;
 int dns_packet_unref (int ) ;
 int dns_query_free_candidates (TYPE_3__*) ;
 int dns_query_reset_answer (TYPE_3__*) ;
 int dns_question_unref (int ) ;
 TYPE_7__* dns_stream_unref (TYPE_7__*) ;
 int free (int ) ;
 TYPE_3__* mfree (TYPE_3__*) ;
 int queries ;
 int sd_bus_message_unref (int ) ;
 int sd_bus_track_unref (int ) ;
 int set_remove (int ,TYPE_3__*) ;

DnsQuery *dns_query_free(DnsQuery *q) {
        if (!q)
                return ((void*)0);

        while (q->auxiliary_queries)
                dns_query_free(q->auxiliary_queries);

        if (q->auxiliary_for) {
                assert(q->auxiliary_for->n_auxiliary_queries > 0);
                q->auxiliary_for->n_auxiliary_queries--;
                LIST_REMOVE(auxiliary_queries, q->auxiliary_for->auxiliary_queries, q);
        }

        dns_query_free_candidates(q);

        dns_question_unref(q->question_idna);
        dns_question_unref(q->question_utf8);

        dns_query_reset_answer(q);

        sd_bus_message_unref(q->request);
        sd_bus_track_unref(q->bus_track);

        dns_packet_unref(q->request_dns_packet);
        dns_packet_unref(q->reply_dns_packet);

        if (q->request_dns_stream) {

                (void) set_remove(q->request_dns_stream->queries, q);
                q->request_dns_stream = dns_stream_unref(q->request_dns_stream);
        }

        free(q->request_address_string);

        if (q->manager) {
                LIST_REMOVE(queries, q->manager->dns_queries, q);
                q->manager->n_dns_queries--;
        }

        return mfree(q);
}
