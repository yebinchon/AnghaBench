
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int lossless_packethandler_userdata; int (* lossless_packethandler ) (TYPE_1__*,int,scalar_t__ const*,int ,int ) ;} ;
typedef TYPE_1__ Messenger ;


 scalar_t__ const PACKET_ID_LOSSLESS_RANGE_SIZE ;
 scalar_t__ const PACKET_ID_LOSSLESS_RANGE_START ;
 scalar_t__ friend_not_valid (TYPE_1__*,int) ;
 int stub1 (TYPE_1__*,int,scalar_t__ const*,int ,int ) ;

__attribute__((used)) static int handle_custom_lossless_packet(void *object, int friend_num, const uint8_t *packet, uint16_t length)
{
    Messenger *m = object;

    if (friend_not_valid(m, friend_num))
        return -1;

    if (packet[0] < PACKET_ID_LOSSLESS_RANGE_START)
        return -1;

    if (packet[0] >= (PACKET_ID_LOSSLESS_RANGE_START + PACKET_ID_LOSSLESS_RANGE_SIZE))
        return -1;

    if (m->lossless_packethandler)
        m->lossless_packethandler(m, friend_num, packet, length, m->lossless_packethandler_userdata);

    return 1;
}
