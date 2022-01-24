#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {scalar_t__ status; int /*<<< orphan*/  recv_array; int /*<<< orphan*/  send_array; int /*<<< orphan*/  ip_portv6; int /*<<< orphan*/  ip_portv4; int /*<<< orphan*/  connection_number_tcp; } ;
struct TYPE_9__ {int /*<<< orphan*/  connections_mutex; int /*<<< orphan*/  ip_port_list; int /*<<< orphan*/  tcp_mutex; int /*<<< orphan*/  tcp_c; int /*<<< orphan*/  connection_use_counter; } ;
typedef  TYPE_1__ Net_Crypto ;
typedef  TYPE_2__ Crypto_Connection ;

/* Variables and functions */
 scalar_t__ CRYPTO_CONN_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*,int) ; 

int FUNC9(Net_Crypto *c, int crypt_connection_id)
{
    while (1) { /* TODO: is this really the best way to do this? */
        FUNC5(&c->connections_mutex);

        if (!c->connection_use_counter) {
            break;
        }

        FUNC6(&c->connections_mutex);
    }

    Crypto_Connection *conn = FUNC3(c, crypt_connection_id);

    int ret = -1;

    if (conn) {
        if (conn->status == CRYPTO_CONN_ESTABLISHED)
            FUNC7(c, crypt_connection_id);

        FUNC5(&c->tcp_mutex);
        FUNC4(c->tcp_c, conn->connection_number_tcp);
        FUNC6(&c->tcp_mutex);

        FUNC0(&c->ip_port_list, (uint8_t *)&conn->ip_portv4, crypt_connection_id);
        FUNC0(&c->ip_port_list, (uint8_t *)&conn->ip_portv6, crypt_connection_id);
        FUNC2(c, crypt_connection_id);
        FUNC1(&conn->send_array);
        FUNC1(&conn->recv_array);
        ret = FUNC8(c, crypt_connection_id);
    }

    FUNC6(&c->connections_mutex);

    return ret;
}