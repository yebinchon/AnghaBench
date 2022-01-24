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
typedef  int /*<<< orphan*/  packet ;
struct TYPE_3__ {int sent_nonce; int /*<<< orphan*/  mutex; int /*<<< orphan*/  shared_key; } ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_1__ Crypto_Connection ;

/* Variables and functions */
 scalar_t__ MAX_CRYPTO_PACKET_SIZE ; 
 int /*<<< orphan*/  NET_PACKET_CRYPTO_DATA ; 
 scalar_t__ crypto_box_MACBYTES ; 
 int crypto_box_NONCEBYTES ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(Net_Crypto *c, int crypt_connection_id, const uint8_t *data, uint16_t length)
{
    if (length == 0 || length + (1 + sizeof(uint16_t) + crypto_box_MACBYTES) > MAX_CRYPTO_PACKET_SIZE)
        return -1;

    Crypto_Connection *conn = FUNC1(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    FUNC4(&conn->mutex);
    uint8_t packet[1 + sizeof(uint16_t) + length + crypto_box_MACBYTES];
    packet[0] = NET_PACKET_CRYPTO_DATA;
    FUNC3(packet + 1, conn->sent_nonce + (crypto_box_NONCEBYTES - sizeof(uint16_t)), sizeof(uint16_t));
    int len = FUNC0(conn->shared_key, conn->sent_nonce, data, length, packet + 1 + sizeof(uint16_t));

    if (len + 1 + sizeof(uint16_t) != sizeof(packet)) {
        FUNC5(&conn->mutex);
        return -1;
    }

    FUNC2(conn->sent_nonce);
    FUNC5(&conn->mutex);

    return FUNC6(c, crypt_connection_id, packet, sizeof(packet));
}