
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int packet ;
struct TYPE_4__ {int net_crypto; } ;
typedef TYPE_1__ Friend_Connections ;


 int GROUP_IDENTIFIER_LENGTH ;
 int ONLINE_PACKET_DATA_SIZE ;
 int PACKET_ID_ONLINE_PACKET ;
 int friend_connection_crypt_connection_id (TYPE_1__*,int) ;
 int htons (int ) ;
 int memcpy (int *,int *,int) ;
 int write_cryptpacket (int ,int ,int *,int,int ) ;

__attribute__((used)) static int send_packet_online(Friend_Connections *fr_c, int friendcon_id, uint16_t group_num, uint8_t *identifier)
{
    uint8_t packet[1 + ONLINE_PACKET_DATA_SIZE];
    group_num = htons(group_num);
    packet[0] = PACKET_ID_ONLINE_PACKET;
    memcpy(packet + 1, &group_num, sizeof(uint16_t));
    memcpy(packet + 1 + sizeof(uint16_t), identifier, GROUP_IDENTIFIER_LENGTH);
    return write_cryptpacket(fr_c->net_crypto, friend_connection_crypt_connection_id(fr_c, friendcon_id), packet,
                             sizeof(packet), 0) != -1;
}
