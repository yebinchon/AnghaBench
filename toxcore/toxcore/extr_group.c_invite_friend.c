
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int invite ;
typedef int int32_t ;
typedef int groupchat_num ;
struct TYPE_8__ {int m; } ;
struct TYPE_7__ {int * identifier; } ;
typedef TYPE_1__ Group_c ;
typedef TYPE_2__ Group_Chats ;


 int GROUP_IDENTIFIER_LENGTH ;
 int INVITE_ID ;
 int INVITE_PACKET_SIZE ;
 TYPE_1__* get_group_c (TYPE_2__*,int) ;
 int htons (int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ send_group_invite_packet (int ,int ,int *,int) ;
 int wipe_group_chat (TYPE_2__*,int) ;

int invite_friend(Group_Chats *g_c, int32_t friendnumber, int groupnumber)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    uint8_t invite[INVITE_PACKET_SIZE];
    invite[0] = INVITE_ID;
    uint16_t groupchat_num = htons((uint16_t)groupnumber);
    memcpy(invite + 1, &groupchat_num, sizeof(groupchat_num));
    memcpy(invite + 1 + sizeof(groupchat_num), g->identifier, GROUP_IDENTIFIER_LENGTH);

    if (send_group_invite_packet(g_c->m, friendnumber, invite, sizeof(invite))) {
        return 0;
    } else {
        wipe_group_chat(g_c, groupnumber);
        return -1;
    }
}
