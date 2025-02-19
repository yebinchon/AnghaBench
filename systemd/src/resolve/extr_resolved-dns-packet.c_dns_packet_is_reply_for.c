
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* question; } ;
struct TYPE_10__ {int n_keys; int * keys; } ;
typedef TYPE_2__ DnsResourceKey ;
typedef TYPE_2__ const DnsPacket ;


 int DNS_PACKET_QR (TYPE_2__ const*) ;
 int assert (TYPE_2__ const*) ;
 int dns_packet_extract (TYPE_2__ const*) ;
 int dns_resource_key_equal (int ,TYPE_2__ const*) ;

int dns_packet_is_reply_for(DnsPacket *p, const DnsResourceKey *key) {
        int r;

        assert(p);
        assert(key);





        if (DNS_PACKET_QR(p) != 1)
                return 0;


        r = dns_packet_extract(p);
        if (r < 0)
                return r;

        if (!p->question)
                return 0;

        if (p->question->n_keys != 1)
                return 0;

        return dns_resource_key_equal(p->question->keys[0], key);
}
