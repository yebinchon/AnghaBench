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
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  public_key; int /*<<< orphan*/  ip_port; } ;
struct TYPE_11__ {unsigned int connections_length; int /*<<< orphan*/  onion_num_conns; int /*<<< orphan*/  proxy_info; int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  self_public_key; } ;
struct TYPE_10__ {scalar_t__ status; scalar_t__ unsleep; scalar_t__ connected_time; scalar_t__ sleep_count; scalar_t__ lock_count; scalar_t__ onion; TYPE_4__* connection; } ;
typedef  TYPE_1__ TCP_con ;
typedef  TYPE_2__ TCP_Connections ;
typedef  int /*<<< orphan*/  TCP_Connection_to ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CONNECTIONS_STATUS_NONE ; 
 scalar_t__ TCP_CONN_SLEEPING ; 
 scalar_t__ TCP_CONN_VALID ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,unsigned int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(TCP_Connections *tcp_c, int tcp_connections_number)
{
    TCP_con *tcp_con = FUNC1(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    if (tcp_con->status == TCP_CONN_SLEEPING)
        return -1;

    IP_Port ip_port = tcp_con->connection->ip_port;
    uint8_t relay_pk[crypto_box_PUBLICKEYBYTES];
    FUNC4(relay_pk, tcp_con->connection->public_key, crypto_box_PUBLICKEYBYTES);
    FUNC2(tcp_con->connection);
    tcp_con->connection = FUNC5(ip_port, relay_pk, tcp_c->self_public_key, tcp_c->self_secret_key,
                          &tcp_c->proxy_info);

    if (!tcp_con->connection) {
        FUNC3(tcp_c, tcp_connections_number);
        return -1;
    }

    unsigned int i;

    for (i = 0; i < tcp_c->connections_length; ++i) {
        TCP_Connection_to *con_to = FUNC0(tcp_c, i);

        if (con_to) {
            FUNC6(con_to, tcp_connections_number, TCP_CONNECTIONS_STATUS_NONE, 0);
        }
    }

    if (tcp_con->onion) {
        --tcp_c->onion_num_conns;
        tcp_con->onion = 0;
    }

    tcp_con->lock_count = 0;
    tcp_con->sleep_count = 0;
    tcp_con->connected_time = 0;
    tcp_con->status = TCP_CONN_VALID;
    tcp_con->unsleep = 0;

    return 0;
}