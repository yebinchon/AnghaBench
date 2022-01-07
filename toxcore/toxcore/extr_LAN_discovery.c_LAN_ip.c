
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int* uint8; int * uint32; } ;
struct TYPE_6__ {int* uint8; int uint32; } ;
struct TYPE_7__ {scalar_t__ family; TYPE_5__ ip6; TYPE_1__ ip4; } ;
typedef TYPE_1__ IP4 ;
typedef TYPE_2__ IP ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ IPV6_IPV4_IN_V6 (TYPE_5__) ;
 scalar_t__ Local_ip (TYPE_2__) ;

int LAN_ip(IP ip)
{
    if (Local_ip(ip))
        return 0;

    if (ip.family == AF_INET) {
        IP4 ip4 = ip.ip4;


        if (ip4.uint8[0] == 10)
            return 0;


        if (ip4.uint8[0] == 172 && ip4.uint8[1] >= 16 && ip4.uint8[1] <= 31)
            return 0;


        if (ip4.uint8[0] == 192 && ip4.uint8[1] == 168)
            return 0;


        if (ip4.uint8[0] == 169 && ip4.uint8[1] == 254 && ip4.uint8[2] != 0
                && ip4.uint8[2] != 255)
            return 0;



        if ((ip4.uint8[0] == 100) && ((ip4.uint8[1] & 0xC0) == 0x40))
            return 0;

    } else if (ip.family == AF_INET6) {



        if (((ip.ip6.uint8[0] == 0xFF) && (ip.ip6.uint8[1] < 3) && (ip.ip6.uint8[15] == 1)) ||
                ((ip.ip6.uint8[0] == 0xFE) && ((ip.ip6.uint8[1] & 0xC0) == 0x80)))
            return 0;


        if (IPV6_IPV4_IN_V6(ip.ip6)) {
            IP ip4;
            ip4.family = AF_INET;
            ip4.ip4.uint32 = ip.ip6.uint32[3];
            return LAN_ip(ip4);
        }
    }

    return -1;
}
