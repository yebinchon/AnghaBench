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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  plain ;
struct TYPE_3__ {int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  secret_symmetric_key; } ;
typedef  TYPE_1__ Net_Crypto ;

/* Variables and functions */
 int COOKIE_DATA_LENGTH ; 
 int COOKIE_LENGTH ; 
 scalar_t__ HANDSHAKE_PACKET_LENGTH ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int crypto_hash_sha512_BYTES ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(const Net_Crypto *c, uint8_t *nonce, uint8_t *session_pk, uint8_t *peer_real_pk,
                                   uint8_t *dht_public_key, uint8_t *cookie, const uint8_t *packet, uint16_t length, const uint8_t *expected_real_pk)
{
    if (length != HANDSHAKE_PACKET_LENGTH)
        return -1;

    uint8_t cookie_plain[COOKIE_DATA_LENGTH];

    if (FUNC3(cookie_plain, packet + 1, c->secret_symmetric_key) != 0)
        return -1;

    if (expected_real_pk)
        if (FUNC4(cookie_plain, expected_real_pk) != 0)
            return -1;

    uint8_t cookie_hash[crypto_hash_sha512_BYTES];
    FUNC0(cookie_hash, packet + 1, COOKIE_LENGTH);

    uint8_t plain[crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES + crypto_hash_sha512_BYTES + COOKIE_LENGTH];
    int len = FUNC1(cookie_plain, c->self_secret_key, packet + 1 + COOKIE_LENGTH,
                           packet + 1 + COOKIE_LENGTH + crypto_box_NONCEBYTES,
                           HANDSHAKE_PACKET_LENGTH - (1 + COOKIE_LENGTH + crypto_box_NONCEBYTES), plain);

    if (len != sizeof(plain))
        return -1;

    if (FUNC5(cookie_hash, plain + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES,
                      crypto_hash_sha512_BYTES) != 0)
        return -1;

    FUNC2(nonce, plain, crypto_box_NONCEBYTES);
    FUNC2(session_pk, plain + crypto_box_NONCEBYTES, crypto_box_PUBLICKEYBYTES);
    FUNC2(cookie, plain + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES + crypto_hash_sha512_BYTES, COOKIE_LENGTH);
    FUNC2(peer_real_pk, cookie_plain, crypto_box_PUBLICKEYBYTES);
    FUNC2(dht_public_key, cookie_plain + crypto_box_PUBLICKEYBYTES, crypto_box_PUBLICKEYBYTES);
    return 0;
}