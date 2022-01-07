
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int state; struct TYPE_12__* request_dns_packet; int request_dns_stream; int manager; int answer_rcode; int reply_dns_packet; int opt; int answer; int question_idna; } ;
typedef TYPE_1__ DnsQuery ;


 int DNS_PACKET_DO (TYPE_1__*) ;
 int DNS_PACKET_ID (TYPE_1__*) ;
 int DNS_PACKET_PAYLOAD_SIZE_MAX (TYPE_1__*) ;
 int DNS_QUERY_RESTARTED ;
 int DNS_RCODE_NXDOMAIN ;
 int DNS_RCODE_SERVFAIL ;
 int ELOOP ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int dns_query_free (TYPE_1__*) ;
 int dns_query_fully_authenticated (TYPE_1__*) ;
 int dns_query_process_cname (TYPE_1__*) ;
 int dns_stub_finish_reply_packet (int ,int ,int ,int,int,int ,int) ;
 int dns_stub_make_reply_packet (int *,int ,int ,int ,int*) ;
 int dns_stub_send (int ,int ,TYPE_1__*,int ) ;
 int dns_stub_send_failure (int ,int ,TYPE_1__*,int ,int) ;
 int log_debug_errno (int,char*) ;

__attribute__((used)) static void dns_stub_query_complete(DnsQuery *q) {
        int r;

        assert(q);
        assert(q->request_dns_packet);

        switch (q->state) {

        case 130: {
                bool truncated;

                r = dns_stub_make_reply_packet(&q->reply_dns_packet, DNS_PACKET_PAYLOAD_SIZE_MAX(q->request_dns_packet), q->question_idna, q->answer, &truncated);
                if (r < 0) {
                        log_debug_errno(r, "Failed to build reply packet: %m");
                        break;
                }

                if (!truncated) {
                        r = dns_query_process_cname(q);
                        if (r == -ELOOP) {
                                (void) dns_stub_send_failure(q->manager, q->request_dns_stream, q->request_dns_packet, DNS_RCODE_SERVFAIL, 0);
                                break;
                        }
                        if (r < 0) {
                                log_debug_errno(r, "Failed to process CNAME: %m");
                                break;
                        }
                        if (r == DNS_QUERY_RESTARTED)
                                return;
                }

                r = dns_stub_finish_reply_packet(
                                q->reply_dns_packet,
                                DNS_PACKET_ID(q->request_dns_packet),
                                q->answer_rcode,
                                truncated,
                                !!q->request_dns_packet->opt,
                                DNS_PACKET_DO(q->request_dns_packet),
                                dns_query_fully_authenticated(q));
                if (r < 0) {
                        log_debug_errno(r, "Failed to finish reply packet: %m");
                        break;
                }

                (void) dns_stub_send(q->manager, q->request_dns_stream, q->request_dns_packet, q->reply_dns_packet);
                break;
        }

        case 132:
                (void) dns_stub_send_failure(q->manager, q->request_dns_stream, q->request_dns_packet, q->answer_rcode, dns_query_fully_authenticated(q));
                break;

        case 137:
                (void) dns_stub_send_failure(q->manager, q->request_dns_stream, q->request_dns_packet, DNS_RCODE_NXDOMAIN, dns_query_fully_authenticated(q));
                break;

        case 129:
        case 142:

                break;

        case 136:
        case 139:
        case 140:
        case 143:
        case 141:
        case 135:
        case 131:
        case 138:
                (void) dns_stub_send_failure(q->manager, q->request_dns_stream, q->request_dns_packet, DNS_RCODE_SERVFAIL, 0);
                break;

        case 134:
        case 133:
        case 128:
        default:
                assert_not_reached("Impossible state");
        }

        dns_query_free(q);
}
