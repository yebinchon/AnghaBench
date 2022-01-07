
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int Group_Chats ;


 int PACKET_ID_ACTION ;
 scalar_t__ send_message_group (int const*,int,int ,int const*,int ) ;

int group_action_send(const Group_Chats *g_c, int groupnumber, const uint8_t *action, uint16_t length)
{
    if (send_message_group(g_c, groupnumber, PACKET_ID_ACTION, action, length)) {
        return 0;
    } else {
        return -1;
    }
}
