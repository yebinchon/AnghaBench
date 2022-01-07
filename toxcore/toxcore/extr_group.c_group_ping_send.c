
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Group_Chats ;


 int GROUP_MESSAGE_PING_ID ;
 scalar_t__ send_message_group (int const*,int,int ,int ,int ) ;

int group_ping_send(const Group_Chats *g_c, int groupnumber)
{
    if (send_message_group(g_c, groupnumber, GROUP_MESSAGE_PING_ID, 0, 0)) {
        return 0;
    } else {
        return -1;
    }
}
