
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int packet ;
struct TYPE_3__ {int fr_c; } ;
typedef TYPE_1__ Group_Chats ;


 int PACKET_ID_DIRECT_GROUPCHAT ;
 int PEER_KILL_ID ;
 unsigned int send_packet_group_peer (int ,int,int ,int ,int *,int) ;

__attribute__((used)) static unsigned int send_peer_kill(Group_Chats *g_c, int friendcon_id, uint16_t group_num)
{
    uint8_t packet[1];
    packet[0] = PEER_KILL_ID;
    return send_packet_group_peer(g_c->fr_c, friendcon_id, PACKET_ID_DIRECT_GROUPCHAT, group_num, packet, sizeof(packet));
}
