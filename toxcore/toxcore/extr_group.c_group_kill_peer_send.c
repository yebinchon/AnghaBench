
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int packet ;
typedef int Group_Chats ;


 int GROUP_MESSAGE_KILL_PEER_ID ;
 int GROUP_MESSAGE_KILL_PEER_LENGTH ;
 int htons (int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ send_message_group (int const*,int,int ,int *,int) ;

__attribute__((used)) static int group_kill_peer_send(const Group_Chats *g_c, int groupnumber, uint16_t peer_num)
{
    uint8_t packet[GROUP_MESSAGE_KILL_PEER_LENGTH];

    peer_num = htons(peer_num);
    memcpy(packet, &peer_num, sizeof(uint16_t));

    if (send_message_group(g_c, groupnumber, GROUP_MESSAGE_KILL_PEER_ID, packet, sizeof(packet))) {
        return 0;
    } else {
        return -1;
    }
}
