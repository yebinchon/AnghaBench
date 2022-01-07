
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opt; } ;
typedef TYPE_1__ DnsPacket ;


 int DNS_RESOURCE_RECORD_OPT_VERSION_SUPPORTED (int ) ;

__attribute__((used)) static inline bool DNS_PACKET_VERSION_SUPPORTED(DnsPacket *p) {



        if (!p->opt)
                return 1;

        return DNS_RESOURCE_RECORD_OPT_VERSION_SUPPORTED(p->opt);
}
