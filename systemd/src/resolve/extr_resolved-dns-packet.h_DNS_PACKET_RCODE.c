
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {TYPE_1__* opt; } ;
struct TYPE_6__ {int ttl; } ;
typedef TYPE_2__ DnsPacket ;


 TYPE_4__* DNS_PACKET_HEADER (TYPE_2__*) ;
 int be16toh (int ) ;

__attribute__((used)) static inline uint16_t DNS_PACKET_RCODE(DnsPacket *p) {
        uint16_t rcode;

        if (p->opt)
                rcode = (uint16_t) (p->opt->ttl >> 24);
        else
                rcode = 0;

        return rcode | (be16toh(DNS_PACKET_HEADER(p)->flags) & 0xF);
}
