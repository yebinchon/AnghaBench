
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; int fr_c; int net_crypto; } ;
struct TYPE_5__ {int friendcon_id; } ;
typedef TYPE_2__ Messenger ;


 int cryptpacket_received (int ,int ,int ) ;
 int friend_connection_crypt_connection_id (int ,int ) ;
 scalar_t__ friend_not_valid (TYPE_2__ const*,size_t) ;

__attribute__((used)) static int friend_received_packet(const Messenger *m, int32_t friendnumber, uint32_t number)
{
    if (friend_not_valid(m, friendnumber))
        return -1;

    return cryptpacket_received(m->net_crypto, friend_connection_crypt_connection_id(m->fr_c,
                                m->friendlist[friendnumber].friendcon_id), number);
}
