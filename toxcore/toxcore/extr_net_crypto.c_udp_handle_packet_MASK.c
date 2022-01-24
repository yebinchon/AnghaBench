#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; void* direct_lastrecv_timev6; void* direct_lastrecv_timev4; } ;
struct TYPE_8__ {scalar_t__ family; } ;
struct TYPE_9__ {TYPE_1__ ip; } ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_2__ IP_Port ;
typedef  TYPE_3__ Crypto_Connection ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  CRYPTO_MIN_PACKET_SIZE ; 
 int /*<<< orphan*/  MAX_CRYPTO_PACKET_SIZE ; 
 scalar_t__ const NET_PACKET_CRYPTO_HS ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__,scalar_t__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,scalar_t__ const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 () ; 

__attribute__((used)) static int FUNC7(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    if (length <= CRYPTO_MIN_PACKET_SIZE || length > MAX_CRYPTO_PACKET_SIZE)
        return 1;

    Net_Crypto *c = object;
    int crypt_connection_id = FUNC0(c, source);

    if (crypt_connection_id == -1) {
        if (packet[0] != NET_PACKET_CRYPTO_HS)
            return 1;

        if (FUNC2(c, source, packet, length) != 0)
            return 1;

        return 0;
    }

    if (FUNC3(c, crypt_connection_id, packet, length, 1) != 0)
        return 1;

    Crypto_Connection *conn = FUNC1(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    FUNC4(&conn->mutex);

    if (source.ip.family == AF_INET) {
        conn->direct_lastrecv_timev4 = FUNC6();
    } else {
        conn->direct_lastrecv_timev6 = FUNC6();
    }

    FUNC5(&conn->mutex);
    return 0;
}