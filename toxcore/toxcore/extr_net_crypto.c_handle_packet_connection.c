
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
typedef int cookie ;
struct TYPE_3__ {int* dht_public_key; int status; int dht_pk_callback_number; int dht_pk_callback_object; int (* dht_pk_callback ) (int ,int ,int*) ;int shared_key; int sessionsecret_key; int peersessionpublic_key; int public_key; int recv_nonce; int cookie_request_number; } ;
typedef int Net_Crypto ;
typedef TYPE_1__ Crypto_Connection ;


 int COOKIE_LENGTH ;
 int CRYPTO_CONN_COOKIE_REQUESTING ;
 int CRYPTO_CONN_ESTABLISHED ;
 int CRYPTO_CONN_HANDSHAKE_SENT ;
 int CRYPTO_CONN_NOT_CONFIRMED ;
 scalar_t__ MAX_CRYPTO_PACKET_SIZE ;



 int create_send_handshake (int *,int,int*,int*) ;
 int crypto_box_PUBLICKEYBYTES ;
 int encrypt_precompute (int ,int ,int ) ;
 TYPE_1__* get_crypto_connection (int *,int) ;
 int handle_cookie_response (int*,int *,int const*,scalar_t__,int ) ;
 int handle_crypto_handshake (int *,int ,int ,int*,int*,int*,int const*,scalar_t__,int ) ;
 int handle_data_packet_helper (int *,int,int const*,scalar_t__,_Bool) ;
 int public_key_cmp (int*,int*) ;
 int stub1 (int ,int ,int*) ;

__attribute__((used)) static int handle_packet_connection(Net_Crypto *c, int crypt_connection_id, const uint8_t *packet, uint16_t length,
                                    _Bool udp)
{
    if (length == 0 || length > MAX_CRYPTO_PACKET_SIZE)
        return -1;

    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    switch (packet[0]) {
        case 130: {
            if (conn->status != CRYPTO_CONN_COOKIE_REQUESTING)
                return -1;

            uint8_t cookie[COOKIE_LENGTH];
            uint64_t number;

            if (handle_cookie_response(cookie, &number, packet, length, conn->shared_key) != sizeof(cookie))
                return -1;

            if (number != conn->cookie_request_number)
                return -1;

            if (create_send_handshake(c, crypt_connection_id, cookie, conn->dht_public_key) != 0)
                return -1;

            conn->status = CRYPTO_CONN_HANDSHAKE_SENT;
            return 0;
        }

        case 128: {
            if (conn->status == CRYPTO_CONN_COOKIE_REQUESTING || conn->status == CRYPTO_CONN_HANDSHAKE_SENT
                    || conn->status == CRYPTO_CONN_NOT_CONFIRMED) {
                uint8_t peer_real_pk[crypto_box_PUBLICKEYBYTES];
                uint8_t dht_public_key[crypto_box_PUBLICKEYBYTES];
                uint8_t cookie[COOKIE_LENGTH];

                if (handle_crypto_handshake(c, conn->recv_nonce, conn->peersessionpublic_key, peer_real_pk, dht_public_key, cookie,
                                            packet, length, conn->public_key) != 0)
                    return -1;

                if (public_key_cmp(dht_public_key, conn->dht_public_key) == 0) {
                    encrypt_precompute(conn->peersessionpublic_key, conn->sessionsecret_key, conn->shared_key);

                    if (conn->status == CRYPTO_CONN_COOKIE_REQUESTING) {
                        if (create_send_handshake(c, crypt_connection_id, cookie, dht_public_key) != 0)
                            return -1;
                    }

                    conn->status = CRYPTO_CONN_NOT_CONFIRMED;
                } else {
                    if (conn->dht_pk_callback)
                        conn->dht_pk_callback(conn->dht_pk_callback_object, conn->dht_pk_callback_number, dht_public_key);
                }

            } else {
                return -1;
            }

            return 0;
        }

        case 129: {
            if (conn->status == CRYPTO_CONN_NOT_CONFIRMED || conn->status == CRYPTO_CONN_ESTABLISHED) {
                return handle_data_packet_helper(c, crypt_connection_id, packet, length, udp);
            } else {
                return -1;
            }

            return 0;
        }

        default: {
            return -1;
        }
    }

    return 0;
}
