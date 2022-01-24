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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  plain ;
struct TYPE_3__ {int /*<<< orphan*/  secret_symmetric_key; } ;
typedef  TYPE_1__ Net_Crypto ;

/* Variables and functions */
 int COOKIE_DATA_LENGTH ; 
 int COOKIE_LENGTH ; 
 int COOKIE_RESPONSE_LENGTH ; 
 int /*<<< orphan*/  NET_PACKET_COOKIE_RESPONSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const Net_Crypto *c, uint8_t *packet, const uint8_t *request_plain,
                                  const uint8_t *shared_key, const uint8_t *dht_public_key)
{
    uint8_t cookie_plain[COOKIE_DATA_LENGTH];
    FUNC2(cookie_plain, request_plain, crypto_box_PUBLICKEYBYTES);
    FUNC2(cookie_plain + crypto_box_PUBLICKEYBYTES, dht_public_key, crypto_box_PUBLICKEYBYTES);
    uint8_t plain[COOKIE_LENGTH + sizeof(uint64_t)];

    if (FUNC0(plain, cookie_plain, c->secret_symmetric_key) != 0)
        return -1;

    FUNC2(plain + COOKIE_LENGTH, request_plain + COOKIE_DATA_LENGTH, sizeof(uint64_t));
    packet[0] = NET_PACKET_COOKIE_RESPONSE;
    FUNC3(packet + 1);
    int len = FUNC1(shared_key, packet + 1, plain, sizeof(plain), packet + 1 + crypto_box_NONCEBYTES);

    if (len != COOKIE_RESPONSE_LENGTH - (1 + crypto_box_NONCEBYTES))
        return -1;

    return COOKIE_RESPONSE_LENGTH;
}