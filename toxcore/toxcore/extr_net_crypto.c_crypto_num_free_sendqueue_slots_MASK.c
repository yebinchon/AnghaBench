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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ packets_left; int /*<<< orphan*/  send_array; } ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_1__ Crypto_Connection ;

/* Variables and functions */
 scalar_t__ CRYPTO_PACKET_BUFFER_SIZE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

uint32_t FUNC2(const Net_Crypto *c, int crypt_connection_id)
{
    Crypto_Connection *conn = FUNC0(c, crypt_connection_id);

    if (conn == 0)
        return 0;

    uint32_t max_packets = CRYPTO_PACKET_BUFFER_SIZE - FUNC1(&conn->send_array);

    if (conn->packets_left < max_packets) {
        return conn->packets_left;
    } else {
        return max_packets;
    }
}