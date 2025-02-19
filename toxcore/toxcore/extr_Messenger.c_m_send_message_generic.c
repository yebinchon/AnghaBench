
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int int64_t ;
typedef size_t int32_t ;
struct TYPE_7__ {TYPE_1__* friendlist; int fr_c; int net_crypto; } ;
struct TYPE_6__ {scalar_t__ status; scalar_t__ message_id; int friendcon_id; } ;
typedef TYPE_2__ Messenger ;


 scalar_t__ FRIEND_ONLINE ;
 scalar_t__ MAX_CRYPTO_DATA_SIZE ;
 scalar_t__ MESSAGE_ACTION ;
 scalar_t__ PACKET_ID_MESSAGE ;
 int add_receipt (TYPE_2__*,size_t,int,scalar_t__) ;
 int friend_connection_crypt_connection_id (int ,int ) ;
 scalar_t__ friend_not_valid (TYPE_2__*,size_t) ;
 int memcpy (scalar_t__*,scalar_t__ const*,scalar_t__) ;
 int write_cryptpacket (int ,int ,scalar_t__*,scalar_t__,int ) ;

int m_send_message_generic(Messenger *m, int32_t friendnumber, uint8_t type, const uint8_t *message, uint32_t length,
                           uint32_t *message_id)
{
    if (type > MESSAGE_ACTION)
        return -5;

    if (friend_not_valid(m, friendnumber))
        return -1;

    if (length >= MAX_CRYPTO_DATA_SIZE)
        return -2;

    if (m->friendlist[friendnumber].status != FRIEND_ONLINE)
        return -3;

    uint8_t packet[length + 1];
    packet[0] = type + PACKET_ID_MESSAGE;

    if (length != 0)
        memcpy(packet + 1, message, length);

    int64_t packet_num = write_cryptpacket(m->net_crypto, friend_connection_crypt_connection_id(m->fr_c,
                                           m->friendlist[friendnumber].friendcon_id), packet, length + 1, 0);

    if (packet_num == -1)
        return -4;

    uint32_t msg_id = ++m->friendlist[friendnumber].message_id;

    add_receipt(m, friendnumber, packet_num, msg_id);

    if (message_id)
        *message_id = msg_id;

    return 0;
}
