
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 scalar_t__ memcmp (int const*,char*,int) ;
 int tcp_oobdata_callback_called ;
 scalar_t__ tcp_send_oob_packet (void*,unsigned int,int const*,int const*,int) ;

__attribute__((used)) static int tcp_oobdata_callback(void *object, const uint8_t *public_key, unsigned int id, const uint8_t *data,
                                uint16_t length)
{
    if (length != 6)
        return -1;

    if (memcmp(data, "Gentoo", length) != 0)
        return -1;

    if (tcp_send_oob_packet(object, id, public_key, data, length) == 0)
        tcp_oobdata_callback_called = 1;

    return 0;
}
