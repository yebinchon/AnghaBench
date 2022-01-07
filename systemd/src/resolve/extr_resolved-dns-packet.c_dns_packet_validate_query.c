
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int protocol; } ;
typedef TYPE_1__ DnsPacket ;


 int DNS_PACKET_AA (TYPE_1__*) ;
 int DNS_PACKET_AD (TYPE_1__*) ;
 int DNS_PACKET_ANCOUNT (TYPE_1__*) ;
 int DNS_PACKET_CD (TYPE_1__*) ;
 int DNS_PACKET_NSCOUNT (TYPE_1__*) ;
 scalar_t__ DNS_PACKET_OPCODE (TYPE_1__*) ;
 int DNS_PACKET_QDCOUNT (TYPE_1__*) ;
 scalar_t__ DNS_PACKET_QR (TYPE_1__*) ;
 int DNS_PACKET_RA (TYPE_1__*) ;
 int DNS_PACKET_RCODE (TYPE_1__*) ;
 int DNS_PACKET_RD (TYPE_1__*) ;
 scalar_t__ DNS_PACKET_TC (TYPE_1__*) ;



 int EBADMSG ;
 int assert (TYPE_1__*) ;
 int dns_packet_validate (TYPE_1__*) ;

int dns_packet_validate_query(DnsPacket *p) {
        int r;

        assert(p);

        r = dns_packet_validate(p);
        if (r < 0)
                return r;

        if (DNS_PACKET_QR(p) != 0)
                return 0;

        if (DNS_PACKET_OPCODE(p) != 0)
                return -EBADMSG;

        if (DNS_PACKET_TC(p))
                return -EBADMSG;

        switch (p->protocol) {

        case 129:
        case 130:

                if (DNS_PACKET_QDCOUNT(p) != 1)
                        return -EBADMSG;


                if (DNS_PACKET_ANCOUNT(p) > 0)
                        return -EBADMSG;


                if (DNS_PACKET_NSCOUNT(p) > 0)
                        return -EBADMSG;

                break;

        case 128:

                if (DNS_PACKET_AA(p) != 0 ||
                    DNS_PACKET_RD(p) != 0 ||
                    DNS_PACKET_RA(p) != 0 ||
                    DNS_PACKET_AD(p) != 0 ||
                    DNS_PACKET_CD(p) != 0 ||
                    DNS_PACKET_RCODE(p) != 0)
                        return -EBADMSG;

                break;

        default:
                break;
        }

        return 1;
}
