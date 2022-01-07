
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ max_size; } ;
typedef TYPE_1__ DnsPacket ;


 size_t DNS_PACKET_SIZE_MAX ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static inline size_t dns_packet_size_max(DnsPacket *p) {
        assert(p);





        return p->max_size != 0 ? p->max_size : DNS_PACKET_SIZE_MAX;
}
