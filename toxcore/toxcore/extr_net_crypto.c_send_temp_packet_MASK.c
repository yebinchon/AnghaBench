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
struct TYPE_3__ {int /*<<< orphan*/  temp_packet_num_sent; int /*<<< orphan*/  temp_packet_sent_time; int /*<<< orphan*/  temp_packet_length; int /*<<< orphan*/  temp_packet; } ;
typedef  int /*<<< orphan*/  Net_Crypto ;
typedef  TYPE_1__ Crypto_Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Net_Crypto *c, int crypt_connection_id)
{
    Crypto_Connection *conn = FUNC1(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    if (!conn->temp_packet)
        return -1;

    if (FUNC2(c, crypt_connection_id, conn->temp_packet, conn->temp_packet_length) != 0)
        return -1;

    conn->temp_packet_sent_time = FUNC0();
    ++conn->temp_packet_num_sent;
    return 0;
}