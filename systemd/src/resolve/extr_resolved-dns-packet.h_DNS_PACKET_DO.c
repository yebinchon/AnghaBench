
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* opt; } ;
struct TYPE_4__ {unsigned int ttl; } ;
typedef TYPE_2__ DnsPacket ;



__attribute__((used)) static inline bool DNS_PACKET_DO(DnsPacket *p) {
        if (!p->opt)
                return 0;

        return !!(p->opt->ttl & (1U << 15));
}
