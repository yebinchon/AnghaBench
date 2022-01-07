
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int handshake_packet ;
struct TYPE_3__ {int public_key; int sessionpublic_key; int sent_nonce; } ;
typedef int Net_Crypto ;
typedef TYPE_1__ Crypto_Connection ;


 int HANDSHAKE_PACKET_LENGTH ;
 int create_crypto_handshake (int *,int *,int const*,int ,int ,int ,int const*) ;
 TYPE_1__* get_crypto_connection (int *,int) ;
 scalar_t__ new_temp_packet (int *,int,int *,int) ;
 int send_temp_packet (int *,int) ;

__attribute__((used)) static int create_send_handshake(Net_Crypto *c, int crypt_connection_id, const uint8_t *cookie,
                                 const uint8_t *dht_public_key)
{
    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    uint8_t handshake_packet[HANDSHAKE_PACKET_LENGTH];

    if (create_crypto_handshake(c, handshake_packet, cookie, conn->sent_nonce, conn->sessionpublic_key,
                                conn->public_key, dht_public_key) != sizeof(handshake_packet))
        return -1;

    if (new_temp_packet(c, crypt_connection_id, handshake_packet, sizeof(handshake_packet)) != 0)
        return -1;

    send_temp_packet(c, crypt_connection_id);
    return 0;
}
