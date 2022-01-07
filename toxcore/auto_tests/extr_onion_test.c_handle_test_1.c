
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int net; } ;
typedef TYPE_1__ Onion ;
typedef int IP_Port ;


 int handled_test_1 ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int send_onion_response (int ,int ,int *,int,int const*) ;

__attribute__((used)) static int handle_test_1(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    Onion *onion = object;

    if (memcmp(packet, "\x83 Install Gentoo", sizeof("\x83 Install Gentoo")) != 0)
        return 1;

    if (send_onion_response(onion->net, source, (uint8_t *)"\x84 install gentoo", sizeof("\x84 install gentoo"),
                            packet + sizeof("\x83 Install Gentoo")) == -1)
        return 1;

    handled_test_1 = 1;
    return 0;
}
