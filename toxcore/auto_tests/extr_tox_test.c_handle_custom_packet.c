
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int Tox ;


 size_t TOX_MAX_CUSTOM_PACKET_SIZE ;
 int ck_abort_msg (char*,int ) ;
 int custom_packet ;
 scalar_t__ memcmp (int *,int const*,size_t) ;
 int memset (int *,int ,size_t) ;

void handle_custom_packet(Tox *m, uint32_t friend_num, const uint8_t *data, size_t len, void *object)
{
    uint8_t number = *((uint32_t *)object);

    if (len != TOX_MAX_CUSTOM_PACKET_SIZE)
        return;

    uint8_t f_data[len];
    memset(f_data, number, len);

    if (memcmp(f_data, data, len) == 0) {
        ++custom_packet;
    } else {
        ck_abort_msg("Custom packet fail. %u", number);
    }

    return;
}
