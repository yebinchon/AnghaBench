
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ ipproto; TYPE_2__* opt; } ;
struct TYPE_6__ {TYPE_1__* key; } ;
struct TYPE_5__ {int class; } ;
typedef TYPE_3__ DnsPacket ;


 int DNS_PACKET_SIZE_MAX ;
 int DNS_PACKET_UNICAST_SIZE_MAX ;
 scalar_t__ IPPROTO_TCP ;
 int MAX (int ,int ) ;

__attribute__((used)) static inline uint16_t DNS_PACKET_PAYLOAD_SIZE_MAX(DnsPacket *p) {



        if (p->ipproto == IPPROTO_TCP)
                return DNS_PACKET_SIZE_MAX;

        if (p->opt)
                return MAX(DNS_PACKET_UNICAST_SIZE_MAX, p->opt->key->class);

        return DNS_PACKET_UNICAST_SIZE_MAX;
}
