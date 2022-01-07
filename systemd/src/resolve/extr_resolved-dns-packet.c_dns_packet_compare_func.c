
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; } ;
typedef TYPE_1__ DnsPacket ;


 int CMP (int ,int ) ;
 int DNS_PACKET_DATA (TYPE_1__*) ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int dns_packet_compare_func(const DnsPacket *x, const DnsPacket *y) {
        int r;

        r = CMP(x->size, y->size);
        if (r != 0)
                return r;

        return memcmp(DNS_PACKET_DATA((DnsPacket*) x), DNS_PACKET_DATA((DnsPacket*) y), x->size);
}
