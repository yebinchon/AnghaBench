
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const uint32_t ;
typedef int uint16_t ;
typedef int peer_num ;
typedef int packet ;
typedef int message_num ;
struct TYPE_3__ {scalar_t__ status; int message_number; int peer_number; } ;
typedef TYPE_1__ Group_c ;
typedef int Group_Chats ;


 scalar_t__ GROUPCHAT_STATUS_CONNECTED ;
 int MAX_GROUP_MESSAGE_DATA_LEN ;
 TYPE_1__* get_group_c (int const*,int) ;
 int htonl (int ) ;
 int htons (int ) ;
 int memcpy (int*,int const*,int) ;
 unsigned int send_message_all_close (int const*,int,int*,int,int) ;

__attribute__((used)) static unsigned int send_message_group(const Group_Chats *g_c, int groupnumber, uint8_t message_id, const uint8_t *data,
                                       uint16_t len)
{
    if (len > MAX_GROUP_MESSAGE_DATA_LEN)
        return 0;

    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return 0;

    if (g->status != GROUPCHAT_STATUS_CONNECTED)
        return 0;

    uint8_t packet[sizeof(uint16_t) + sizeof(uint32_t) + 1 + len];
    uint16_t peer_num = htons(g->peer_number);
    memcpy(packet, &peer_num, sizeof(peer_num));

    ++g->message_number;

    if (!g->message_number)
        ++g->message_number;

    uint32_t message_num = htonl(g->message_number);
    memcpy(packet + sizeof(uint16_t), &message_num, sizeof(message_num));

    packet[sizeof(uint16_t) + sizeof(uint32_t)] = message_id;

    if (len)
        memcpy(packet + sizeof(uint16_t) + sizeof(uint32_t) + 1, data, len);

    return send_message_all_close(g_c, groupnumber, packet, sizeof(packet), -1);
}
