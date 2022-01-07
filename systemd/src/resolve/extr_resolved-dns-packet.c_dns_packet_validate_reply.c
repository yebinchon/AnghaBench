
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int protocol; } ;
typedef TYPE_1__ DnsPacket ;


 scalar_t__ DNS_PACKET_OPCODE (TYPE_1__*) ;
 int DNS_PACKET_QDCOUNT (TYPE_1__*) ;
 int DNS_PACKET_QR (TYPE_1__*) ;
 int DNS_PACKET_RCODE (TYPE_1__*) ;


 int EBADMSG ;
 int assert (TYPE_1__*) ;
 int dns_packet_validate (TYPE_1__*) ;

int dns_packet_validate_reply(DnsPacket *p) {
        int r;

        assert(p);

        r = dns_packet_validate(p);
        if (r < 0)
                return r;

        if (DNS_PACKET_QR(p) != 1)
                return 0;

        if (DNS_PACKET_OPCODE(p) != 0)
                return -EBADMSG;

        switch (p->protocol) {

        case 129:

                if (DNS_PACKET_QDCOUNT(p) != 1)
                        return -EBADMSG;

                break;

        case 128:

                if (DNS_PACKET_RCODE(p) != 0)
                        return -EBADMSG;

                break;

        default:
                break;
        }

        return 1;
}
