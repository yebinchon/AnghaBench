#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_5__ {int /*<<< orphan*/  tcp_c; } ;
typedef  TYPE_1__ Net_Crypto ;

/* Variables and functions */
 int COOKIE_REQUEST_PLAIN_LENGTH ; 
 int COOKIE_RESPONSE_LENGTH ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int crypto_box_BEFORENMBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(Net_Crypto *c, int connections_number, const uint8_t *packet, uint16_t length)
{
    uint8_t request_plain[COOKIE_REQUEST_PLAIN_LENGTH];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];
    uint8_t dht_public_key[crypto_box_PUBLICKEYBYTES];

    if (FUNC1(c, request_plain, shared_key, dht_public_key, packet, length) != 0)
        return -1;

    uint8_t data[COOKIE_RESPONSE_LENGTH];

    if (FUNC0(c, data, request_plain, shared_key, dht_public_key) != sizeof(data))
        return -1;

    int ret = FUNC2(c->tcp_c, connections_number, data, sizeof(data));
    return ret;
}