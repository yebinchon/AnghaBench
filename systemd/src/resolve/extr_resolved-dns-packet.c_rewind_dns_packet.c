
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_rindex; scalar_t__ packet; } ;
typedef TYPE_1__ DnsPacketRewinder ;


 int dns_packet_rewind (scalar_t__,int ) ;

__attribute__((used)) static void rewind_dns_packet(DnsPacketRewinder *rewinder) {
        if (rewinder->packet)
                dns_packet_rewind(rewinder->packet, rewinder->saved_rindex);
}
