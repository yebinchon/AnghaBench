
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int packet ;
struct TYPE_3__ {int sent_nonce; int mutex; int shared_key; } ;
typedef int Net_Crypto ;
typedef TYPE_1__ Crypto_Connection ;


 scalar_t__ MAX_CRYPTO_PACKET_SIZE ;
 int NET_PACKET_CRYPTO_DATA ;
 scalar_t__ crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int encrypt_data_symmetric (int ,int,int const*,scalar_t__,int *) ;
 TYPE_1__* get_crypto_connection (int *,int) ;
 int increment_nonce (int) ;
 int memcpy (int *,int,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int send_packet_to (int *,int,int *,int) ;

__attribute__((used)) static int send_data_packet(Net_Crypto *c, int crypt_connection_id, const uint8_t *data, uint16_t length)
{
    if (length == 0 || length + (1 + sizeof(uint16_t) + crypto_box_MACBYTES) > MAX_CRYPTO_PACKET_SIZE)
        return -1;

    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    pthread_mutex_lock(&conn->mutex);
    uint8_t packet[1 + sizeof(uint16_t) + length + crypto_box_MACBYTES];
    packet[0] = NET_PACKET_CRYPTO_DATA;
    memcpy(packet + 1, conn->sent_nonce + (crypto_box_NONCEBYTES - sizeof(uint16_t)), sizeof(uint16_t));
    int len = encrypt_data_symmetric(conn->shared_key, conn->sent_nonce, data, length, packet + 1 + sizeof(uint16_t));

    if (len + 1 + sizeof(uint16_t) != sizeof(packet)) {
        pthread_mutex_unlock(&conn->mutex);
        return -1;
    }

    increment_nonce(conn->sent_nonce);
    pthread_mutex_unlock(&conn->mutex);

    return send_packet_to(c, crypt_connection_id, packet, sizeof(packet));
}
