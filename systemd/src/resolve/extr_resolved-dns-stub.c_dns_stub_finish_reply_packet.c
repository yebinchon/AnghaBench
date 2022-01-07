
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int flags; int id; } ;
typedef int DnsPacket ;


 int ADVERTISE_DATAGRAM_SIZE_MAX ;
 TYPE_1__* DNS_PACKET_HEADER (int *) ;
 int DNS_PACKET_MAKE_FLAGS (int,int ,int ,int,int,int,int,int ,int) ;
 int DNS_RCODE_SERVFAIL ;
 int EMSGSIZE ;
 int assert (int *) ;
 int dns_packet_append_opt (int *,int ,int,int,int *) ;
 int htobe16 (int ) ;

__attribute__((used)) static int dns_stub_finish_reply_packet(
                DnsPacket *p,
                uint16_t id,
                int rcode,
                bool tc,
                bool add_opt,
                bool edns0_do,
                bool ad) {

        int r;

        assert(p);

        if (add_opt) {
                r = dns_packet_append_opt(p, ADVERTISE_DATAGRAM_SIZE_MAX, edns0_do, rcode, ((void*)0));
                if (r == -EMSGSIZE)
                        tc = 1;
                else if (r < 0)
                        return r;

        } else {

                edns0_do = 0;


                if (rcode > 0xF)
                        rcode = DNS_RCODE_SERVFAIL;
        }


        if (!edns0_do)
                ad = 0;

        DNS_PACKET_HEADER(p)->id = id;

        DNS_PACKET_HEADER(p)->flags = htobe16(DNS_PACKET_MAKE_FLAGS(
                                                              1 ,
                                                              0 ,
                                                              0 ,
                                                              tc ,
                                                              1 ,
                                                              1 ,
                                                              ad ,
                                                              0 ,
                                                              rcode));

        return 0;
}
