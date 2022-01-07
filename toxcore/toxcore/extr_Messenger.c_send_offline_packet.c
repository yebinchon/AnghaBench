
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int packet ;
struct TYPE_3__ {int fr_c; int net_crypto; } ;
typedef TYPE_1__ Messenger ;


 int PACKET_ID_OFFLINE ;
 int friend_connection_crypt_connection_id (int ,int) ;
 int write_cryptpacket (int ,int ,int *,int,int ) ;

__attribute__((used)) static int send_offline_packet(Messenger *m, int friendcon_id)
{
    uint8_t packet = PACKET_ID_OFFLINE;
    return write_cryptpacket(m->net_crypto, friend_connection_crypt_connection_id(m->fr_c, friendcon_id), &packet,
                             sizeof(packet), 0) != -1;
}
