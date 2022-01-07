
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sender; int family; } ;
typedef TYPE_1__ DnsPacket ;


 scalar_t__ in_addr_is_localhost (int ,int *) ;

__attribute__((used)) static inline bool DNS_PACKET_SHALL_CACHE(DnsPacket *p) {




        return in_addr_is_localhost(p->family, &p->sender) == 0;
}
