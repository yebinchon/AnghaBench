#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  buffer_start; } ;
struct TYPE_9__ {int maximum_speed_reached; int /*<<< orphan*/  send_array; TYPE_1__ recv_array; int /*<<< orphan*/  mutex; } ;
struct TYPE_8__ {scalar_t__ sent_time; int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_2__ Packet_Data ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_3__ Crypto_Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MAX_CRYPTO_DATA_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,scalar_t__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC10(Net_Crypto *c, int crypt_connection_id, const uint8_t *data, uint16_t length,
                                    uint8_t congestion_control)
{
    if (length == 0 || length > MAX_CRYPTO_DATA_SIZE)
        return -1;

    Crypto_Connection *conn = FUNC3(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    /* If last packet send failed, try to send packet again.
       If sending it fails we won't be able to send the new packet. */
    FUNC8(c, crypt_connection_id);

    if (conn->maximum_speed_reached && congestion_control) {
        return -1;
    }

    Packet_Data dt;
    dt.sent_time = 0;
    dt.length = length;
    FUNC5(dt.data, data, length);
    FUNC6(&conn->mutex);
    int64_t packet_num = FUNC1(&conn->send_array, &dt);
    FUNC7(&conn->mutex);

    if (packet_num == -1)
        return -1;

    if (!congestion_control && conn->maximum_speed_reached) {
        return packet_num;
    }

    if (FUNC9(c, crypt_connection_id, conn->recv_array.buffer_start, packet_num, data, length) == 0) {
        Packet_Data *dt1 = NULL;

        if (FUNC4(&conn->send_array, &dt1, packet_num) == 1)
            dt1->sent_time = FUNC2();
    } else {
        conn->maximum_speed_reached = 1;
        FUNC0("send_data_packet failed\n");
    }

    return packet_num;
}