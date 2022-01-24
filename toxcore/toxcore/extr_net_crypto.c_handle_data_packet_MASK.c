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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ const* recv_nonce; int /*<<< orphan*/  shared_key; } ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_1__ Crypto_Connection ;

/* Variables and functions */
 int DATA_NUM_THRESHOLD ; 
 scalar_t__ MAX_CRYPTO_PACKET_SIZE ; 
 scalar_t__ crypto_box_MACBYTES ; 
 int crypto_box_NONCEBYTES ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__ const*,scalar_t__,scalar_t__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__ const*,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(const Net_Crypto *c, int crypt_connection_id, uint8_t *data, const uint8_t *packet,
                              uint16_t length)
{
    if (length <= (1 + sizeof(uint16_t) + crypto_box_MACBYTES) || length > MAX_CRYPTO_PACKET_SIZE)
        return -1;

    Crypto_Connection *conn = FUNC1(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    uint8_t nonce[crypto_box_NONCEBYTES];
    FUNC4(nonce, conn->recv_nonce, crypto_box_NONCEBYTES);
    uint16_t num_cur_nonce = FUNC2(nonce);
    uint16_t num;
    FUNC4(&num, packet + 1, sizeof(uint16_t));
    num = FUNC5(num);
    uint16_t diff = num - num_cur_nonce;
    FUNC3(nonce, diff);
    int len = FUNC0(conn->shared_key, nonce, packet + 1 + sizeof(uint16_t),
                                     length - (1 + sizeof(uint16_t)), data);

    if ((unsigned int)len != length - (1 + sizeof(uint16_t) + crypto_box_MACBYTES))
        return -1;

    if (diff > DATA_NUM_THRESHOLD * 2) {
        FUNC3(conn->recv_nonce, DATA_NUM_THRESHOLD);
    }

    return len;
}