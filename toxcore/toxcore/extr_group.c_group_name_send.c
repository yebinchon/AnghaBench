
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int Group_Chats ;


 int GROUP_MESSAGE_NAME_ID ;
 scalar_t__ MAX_NAME_LENGTH ;
 scalar_t__ send_message_group (int const*,int,int ,int const*,scalar_t__) ;

__attribute__((used)) static int group_name_send(const Group_Chats *g_c, int groupnumber, const uint8_t *nick, uint16_t nick_len)
{
    if (nick_len > MAX_NAME_LENGTH)
        return -1;

    if (send_message_group(g_c, groupnumber, GROUP_MESSAGE_NAME_ID, nick, nick_len)) {
        return 0;
    } else {
        return -1;
    }
}
