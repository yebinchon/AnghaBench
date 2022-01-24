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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  plain ;
struct TYPE_3__ {int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  secret_symmetric_key; } ;
typedef  TYPE_1__ Net_Crypto ;

/* Variables and functions */
 int COOKIE_DATA_LENGTH ; 
 int COOKIE_LENGTH ; 
 int HANDSHAKE_PACKET_LENGTH ; 
 int /*<<< orphan*/  NET_PACKET_CRYPTO_HS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int crypto_hash_sha512_BYTES ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const Net_Crypto *c, uint8_t *packet, const uint8_t *cookie, const uint8_t *nonce,
                                   const uint8_t *session_pk, const uint8_t *peer_real_pk, const uint8_t *peer_dht_pubkey)
{
    uint8_t plain[crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES + crypto_hash_sha512_BYTES + COOKIE_LENGTH];
    FUNC3(plain, nonce, crypto_box_NONCEBYTES);
    FUNC3(plain + crypto_box_NONCEBYTES, session_pk, crypto_box_PUBLICKEYBYTES);
    FUNC1(plain + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES, cookie, COOKIE_LENGTH);
    uint8_t cookie_plain[COOKIE_DATA_LENGTH];
    FUNC3(cookie_plain, peer_real_pk, crypto_box_PUBLICKEYBYTES);
    FUNC3(cookie_plain + crypto_box_PUBLICKEYBYTES, peer_dht_pubkey, crypto_box_PUBLICKEYBYTES);

    if (FUNC0(plain + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES + crypto_hash_sha512_BYTES, cookie_plain,
                      c->secret_symmetric_key) != 0)
        return -1;

    FUNC4(packet + 1 + COOKIE_LENGTH);
    int len = FUNC2(peer_real_pk, c->self_secret_key, packet + 1 + COOKIE_LENGTH, plain, sizeof(plain),
                           packet + 1 + COOKIE_LENGTH + crypto_box_NONCEBYTES);

    if (len != HANDSHAKE_PACKET_LENGTH - (1 + COOKIE_LENGTH + crypto_box_NONCEBYTES))
        return -1;

    packet[0] = NET_PACKET_CRYPTO_HS;
    FUNC3(packet + 1, cookie, COOKIE_LENGTH);

    return HANDSHAKE_PACKET_LENGTH;
}