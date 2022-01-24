#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  connection_number_tcp; } ;
struct TYPE_6__ {int /*<<< orphan*/  tcp_mutex; int /*<<< orphan*/  tcp_c; } ;
typedef  TYPE_1__ Net_Crypto ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  TYPE_2__ Crypto_Connection ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(Net_Crypto *c, int crypt_connection_id, IP_Port ip_port, const uint8_t *public_key)
{
    Crypto_Connection *conn = FUNC1(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    FUNC2(&c->tcp_mutex);
    int ret = FUNC0(c->tcp_c, conn->connection_number_tcp, ip_port, public_key);
    FUNC3(&c->tcp_mutex);
    return ret;
}