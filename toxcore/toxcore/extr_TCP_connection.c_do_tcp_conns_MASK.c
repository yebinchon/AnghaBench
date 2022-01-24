#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {unsigned int tcp_connections_length; } ;
struct TYPE_13__ {scalar_t__ status; scalar_t__ lock_count; scalar_t__ sleep_count; scalar_t__ unsleep; int /*<<< orphan*/  connected_time; int /*<<< orphan*/  onion; TYPE_11__* connection; } ;
struct TYPE_12__ {scalar_t__ status; } ;
typedef  TYPE_1__ TCP_con ;
typedef  TYPE_2__ TCP_Connections ;

/* Variables and functions */
 scalar_t__ TCP_CLIENT_CONFIRMED ; 
 scalar_t__ TCP_CLIENT_DISCONNECTED ; 
 int /*<<< orphan*/  TCP_CONNECTION_ANNOUNCE_TIMEOUT ; 
 scalar_t__ TCP_CONN_CONNECTED ; 
 scalar_t__ TCP_CONN_SLEEPING ; 
 scalar_t__ TCP_CONN_VALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_11__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static void FUNC8(TCP_Connections *tcp_c)
{
    unsigned int i;

    for (i = 0; i < tcp_c->tcp_connections_length; ++i) {
        TCP_con *tcp_con = FUNC1(tcp_c, i);

        if (tcp_con) {
            if (tcp_con->status != TCP_CONN_SLEEPING) {
                FUNC0(tcp_con->connection);

                /* callbacks can change TCP connection address. */
                tcp_con = FUNC1(tcp_c, i);

                if (tcp_con->connection->status == TCP_CLIENT_DISCONNECTED) {
                    if (tcp_con->status == TCP_CONN_CONNECTED) {
                        FUNC4(tcp_c, i);
                    } else {
                        FUNC3(tcp_c, i);
                    }

                    continue;
                }

                if (tcp_con->status == TCP_CONN_VALID && tcp_con->connection->status == TCP_CLIENT_CONFIRMED) {
                    FUNC6(tcp_c, i);
                }

                if (tcp_con->status == TCP_CONN_CONNECTED && !tcp_con->onion && tcp_con->lock_count
                        && tcp_con->lock_count == tcp_con->sleep_count
                        && FUNC2(tcp_con->connected_time, TCP_CONNECTION_ANNOUNCE_TIMEOUT)) {
                    FUNC5(tcp_c, i);
                }
            }

            if (tcp_con->status == TCP_CONN_SLEEPING && tcp_con->unsleep) {
                FUNC7(tcp_c, i);
            }
        }
    }
}