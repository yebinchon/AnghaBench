
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int packet ;
typedef size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; int fr_c; int net_crypto; } ;
struct TYPE_5__ {int friendcon_id; } ;
typedef TYPE_2__ Messenger ;


 int PACKET_ID_ONLINE ;
 int friend_connection_crypt_connection_id (int ,int ) ;
 scalar_t__ friend_not_valid (TYPE_2__*,size_t) ;
 int write_cryptpacket (int ,int ,int *,int,int ) ;

__attribute__((used)) static int send_online_packet(Messenger *m, int32_t friendnumber)
{
    if (friend_not_valid(m, friendnumber))
        return 0;

    uint8_t packet = PACKET_ID_ONLINE;
    return write_cryptpacket(m->net_crypto, friend_connection_crypt_connection_id(m->fr_c,
                             m->friendlist[friendnumber].friendcon_id), &packet, sizeof(packet), 0) != -1;
}
