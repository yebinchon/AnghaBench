#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  cookie ;
struct TYPE_3__ {int* dht_public_key; int /*<<< orphan*/  status; int /*<<< orphan*/  dht_pk_callback_number; int /*<<< orphan*/  dht_pk_callback_object; int /*<<< orphan*/  (* dht_pk_callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  shared_key; int /*<<< orphan*/  sessionsecret_key; int /*<<< orphan*/  peersessionpublic_key; int /*<<< orphan*/  public_key; int /*<<< orphan*/  recv_nonce; int /*<<< orphan*/  cookie_request_number; } ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_1__ Crypto_Connection ;

/* Variables and functions */
 int COOKIE_LENGTH ; 
 int /*<<< orphan*/  CRYPTO_CONN_COOKIE_REQUESTING ; 
 int /*<<< orphan*/  CRYPTO_CONN_ESTABLISHED ; 
 int /*<<< orphan*/  CRYPTO_CONN_HANDSHAKE_SENT ; 
 int /*<<< orphan*/  CRYPTO_CONN_NOT_CONFIRMED ; 
 scalar_t__ MAX_CRYPTO_PACKET_SIZE ; 
#define  NET_PACKET_COOKIE_RESPONSE 130 
#define  NET_PACKET_CRYPTO_DATA 129 
#define  NET_PACKET_CRYPTO_HS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int*,int*) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ *,int const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*,int const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int const*,scalar_t__,_Bool) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC8(Net_Crypto *c, int crypt_connection_id, const uint8_t *packet, uint16_t length,
                                    _Bool udp)
{
    if (length == 0 || length > MAX_CRYPTO_PACKET_SIZE)
        return -1;

    Crypto_Connection *conn = FUNC2(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    switch (packet[0]) {
        case NET_PACKET_COOKIE_RESPONSE: {
            if (conn->status != CRYPTO_CONN_COOKIE_REQUESTING)
                return -1;

            uint8_t cookie[COOKIE_LENGTH];
            uint64_t number;

            if (FUNC3(cookie, &number, packet, length, conn->shared_key) != sizeof(cookie))
                return -1;

            if (number != conn->cookie_request_number)
                return -1;

            if (FUNC0(c, crypt_connection_id, cookie, conn->dht_public_key) != 0)
                return -1;

            conn->status = CRYPTO_CONN_HANDSHAKE_SENT;
            return 0;
        }

        case NET_PACKET_CRYPTO_HS: {
            if (conn->status == CRYPTO_CONN_COOKIE_REQUESTING || conn->status == CRYPTO_CONN_HANDSHAKE_SENT
                    || conn->status == CRYPTO_CONN_NOT_CONFIRMED) {
                uint8_t peer_real_pk[crypto_box_PUBLICKEYBYTES];
                uint8_t dht_public_key[crypto_box_PUBLICKEYBYTES];
                uint8_t cookie[COOKIE_LENGTH];

                if (FUNC4(c, conn->recv_nonce, conn->peersessionpublic_key, peer_real_pk, dht_public_key, cookie,
                                            packet, length, conn->public_key) != 0)
                    return -1;

                if (FUNC6(dht_public_key, conn->dht_public_key) == 0) {
                    FUNC1(conn->peersessionpublic_key, conn->sessionsecret_key, conn->shared_key);

                    if (conn->status == CRYPTO_CONN_COOKIE_REQUESTING) {
                        if (FUNC0(c, crypt_connection_id, cookie, dht_public_key) != 0)
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

        case NET_PACKET_CRYPTO_DATA: {
            if (conn->status == CRYPTO_CONN_NOT_CONFIRMED || conn->status == CRYPTO_CONN_ESTABLISHED) {
                return FUNC5(c, crypt_connection_id, packet, length, udp);
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