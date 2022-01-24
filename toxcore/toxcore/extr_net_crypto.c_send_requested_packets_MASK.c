#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {scalar_t__ buffer_start; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer_start; } ;
struct TYPE_10__ {TYPE_1__ recv_array; TYPE_4__ send_array; } ;
struct TYPE_9__ {scalar_t__ sent_time; int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ Packet_Data ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_3__ Crypto_Connection ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_4__*,TYPE_2__**,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Net_Crypto *c, int crypt_connection_id, uint32_t max_num)
{
    if (max_num == 0)
        return -1;

    Crypto_Connection *conn = FUNC1(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    uint64_t temp_time = FUNC0();
    uint32_t i, num_sent = 0, array_size = FUNC3(&conn->send_array);

    for (i = 0; i < array_size; ++i) {
        Packet_Data *dt;
        uint32_t packet_num = (i + conn->send_array.buffer_start);
        int ret = FUNC2(&conn->send_array, &dt, packet_num);

        if (ret == -1) {
            return -1;
        } else if (ret == 0) {
            continue;
        }

        if (dt->sent_time) {
            continue;
        }

        if (FUNC4(c, crypt_connection_id, conn->recv_array.buffer_start, packet_num, dt->data,
                                    dt->length) == 0) {
            dt->sent_time = temp_time;
            ++num_sent;
        }

        if (num_sent >= max_num)
            break;
    }

    return num_sent;
}