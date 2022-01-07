
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; int fr_c; int net_crypto; } ;
struct TYPE_5__ {scalar_t__ status; int friendcon_id; } ;
typedef TYPE_2__ Messenger ;


 scalar_t__ FRIEND_ONLINE ;
 scalar_t__ MAX_CRYPTO_DATA_SIZE ;
 int friend_connection_crypt_connection_id (int ,int ) ;
 scalar_t__ friend_not_valid (TYPE_2__ const*,size_t) ;
 int memcpy (int *,int const*,scalar_t__) ;
 int write_cryptpacket (int ,int ,int *,scalar_t__,int ) ;

__attribute__((used)) static int write_cryptpacket_id(const Messenger *m, int32_t friendnumber, uint8_t packet_id, const uint8_t *data,
                                uint32_t length, uint8_t congestion_control)
{
    if (friend_not_valid(m, friendnumber))
        return 0;

    if (length >= MAX_CRYPTO_DATA_SIZE || m->friendlist[friendnumber].status != FRIEND_ONLINE)
        return 0;

    uint8_t packet[length + 1];
    packet[0] = packet_id;

    if (length != 0)
        memcpy(packet + 1, data, length);

    return write_cryptpacket(m->net_crypto, friend_connection_crypt_connection_id(m->fr_c,
                             m->friendlist[friendnumber].friendcon_id), packet, length + 1, congestion_control) != -1;
}
