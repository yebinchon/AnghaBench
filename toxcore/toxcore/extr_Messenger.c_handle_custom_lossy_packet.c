
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_9__ {int lossy_packethandler_userdata; int (* lossy_packethandler ) (TYPE_3__*,int,size_t const*,int ,int ) ;TYPE_2__* friendlist; } ;
struct TYPE_8__ {TYPE_1__* lossy_rtp_packethandlers; } ;
struct TYPE_7__ {int (* function ) (TYPE_3__*,int,size_t const*,int ,int ) ;int object; } ;
typedef TYPE_3__ Messenger ;


 size_t const PACKET_ID_LOSSY_RANGE_START ;
 size_t const PACKET_LOSSY_AV_RESERVED ;
 scalar_t__ friend_not_valid (TYPE_3__*,int) ;
 int stub1 (TYPE_3__*,int,size_t const*,int ,int ) ;
 int stub2 (TYPE_3__*,int,size_t const*,int ,int ) ;

__attribute__((used)) static int handle_custom_lossy_packet(void *object, int friend_num, const uint8_t *packet, uint16_t length)
{
    Messenger *m = object;

    if (friend_not_valid(m, friend_num))
        return 1;

    if (packet[0] < (PACKET_ID_LOSSY_RANGE_START + PACKET_LOSSY_AV_RESERVED)) {
        if (m->friendlist[friend_num].lossy_rtp_packethandlers[packet[0] % PACKET_LOSSY_AV_RESERVED].function)
            return m->friendlist[friend_num].lossy_rtp_packethandlers[packet[0] % PACKET_LOSSY_AV_RESERVED].function(
                       m, friend_num, packet, length, m->friendlist[friend_num].lossy_rtp_packethandlers[packet[0] %
                               PACKET_LOSSY_AV_RESERVED].object);

        return 1;
    }

    if (m->lossy_packethandler)
        m->lossy_packethandler(m, friend_num, packet, length, m->lossy_packethandler_userdata);

    return 1;
}
