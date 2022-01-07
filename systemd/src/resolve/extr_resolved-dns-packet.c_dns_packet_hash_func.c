
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_5__ {int size; } ;
typedef TYPE_1__ DnsPacket ;


 int* DNS_PACKET_DATA (TYPE_1__*) ;
 int assert (TYPE_1__ const*) ;
 int siphash24_compress (int*,int,struct siphash*) ;

__attribute__((used)) static void dns_packet_hash_func(const DnsPacket *s, struct siphash *state) {
        assert(s);

        siphash24_compress(&s->size, sizeof(s->size), state);
        siphash24_compress(DNS_PACKET_DATA((DnsPacket*) s), s->size, state);
}
