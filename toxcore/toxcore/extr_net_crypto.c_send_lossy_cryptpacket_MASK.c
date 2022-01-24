#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_10__ {int /*<<< orphan*/  buffer_end; } ;
struct TYPE_9__ {int /*<<< orphan*/  buffer_start; } ;
struct TYPE_12__ {int /*<<< orphan*/  mutex; TYPE_2__ send_array; TYPE_1__ recv_array; } ;
struct TYPE_11__ {int /*<<< orphan*/  connections_mutex; int /*<<< orphan*/  connection_use_counter; } ;
typedef  TYPE_3__ Net_Crypto ;
typedef  TYPE_4__ Crypto_Connection ;

/* Variables and functions */
 scalar_t__ MAX_CRYPTO_DATA_SIZE ; 
 scalar_t__ const PACKET_ID_LOSSY_RANGE_SIZE ; 
 scalar_t__ const PACKET_ID_LOSSY_RANGE_START ; 
 TYPE_4__* FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*,scalar_t__) ; 

int FUNC4(Net_Crypto *c, int crypt_connection_id, const uint8_t *data, uint16_t length)
{
    if (length == 0 || length > MAX_CRYPTO_DATA_SIZE)
        return -1;

    if (data[0] < PACKET_ID_LOSSY_RANGE_START)
        return -1;

    if (data[0] >= (PACKET_ID_LOSSY_RANGE_START + PACKET_ID_LOSSY_RANGE_SIZE))
        return -1;

    FUNC1(&c->connections_mutex);
    ++c->connection_use_counter;
    FUNC2(&c->connections_mutex);

    Crypto_Connection *conn = FUNC0(c, crypt_connection_id);

    int ret = -1;

    if (conn) {
        FUNC1(&conn->mutex);
        uint32_t buffer_start = conn->recv_array.buffer_start;
        uint32_t buffer_end = conn->send_array.buffer_end;
        FUNC2(&conn->mutex);
        ret = FUNC3(c, crypt_connection_id, buffer_start, buffer_end, data, length);
    }

    FUNC1(&c->connections_mutex);
    --c->connection_use_counter;
    FUNC2(&c->connections_mutex);

    return ret;
}