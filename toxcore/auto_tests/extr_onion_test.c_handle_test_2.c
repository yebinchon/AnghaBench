
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int IP_Port ;


 int handled_test_2 ;
 scalar_t__ memcmp (int const*,int *,int) ;

__attribute__((used)) static int handle_test_2(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    if (length != sizeof("\x84 install Gentoo"))
        return 1;

    if (memcmp(packet, (uint8_t *)"\x84 install gentoo", sizeof("\x84 install gentoo")) != 0)
        return 1;

    handled_test_2 = 1;
    return 0;
}
