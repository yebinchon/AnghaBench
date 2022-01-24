#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  ping ;
struct TYPE_9__ {scalar_t__ status; scalar_t__ last_pinged; scalar_t__ ping_id; } ;
struct TYPE_8__ {scalar_t__ last_run_pinged; size_t size_accepted_connections; TYPE_2__* accepted_connection_array; } ;
typedef  TYPE_1__ TCP_Server ;
typedef  TYPE_2__ TCP_Secure_Connection ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_PACKET_PING ; 
 scalar_t__ TCP_PING_FREQUENCY ; 
 scalar_t__ TCP_PING_TIMEOUT ; 
 scalar_t__ TCP_STATUS_CONFIRMED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC8(TCP_Server *TCP_server)
{
#ifdef TCP_SERVER_USE_EPOLL

    if (TCP_server->last_run_pinged == unix_time())
        return;

    TCP_server->last_run_pinged = unix_time();
#endif
    uint32_t i;

    for (i = 0; i < TCP_server->size_accepted_connections; ++i) {
        TCP_Secure_Connection *conn = &TCP_server->accepted_connection_array[i];

        if (conn->status != TCP_STATUS_CONFIRMED)
            continue;

        if (FUNC1(conn->last_pinged, TCP_PING_FREQUENCY)) {
            uint8_t ping[1 + sizeof(uint64_t)];
            ping[0] = TCP_PACKET_PING;
            uint64_t ping_id = FUNC4();

            if (!ping_id)
                ++ping_id;

            FUNC3(ping + 1, &ping_id, sizeof(uint64_t));
            int ret = FUNC7(conn, ping, sizeof(ping), 1);

            if (ret == 1) {
                conn->last_pinged = FUNC6();
                conn->ping_id = ping_id;
            } else {
                if (FUNC1(conn->last_pinged, TCP_PING_FREQUENCY + TCP_PING_TIMEOUT)) {
                    FUNC2(TCP_server, i);
                    continue;
                }
            }
        }

        if (conn->ping_id && FUNC1(conn->last_pinged, TCP_PING_TIMEOUT)) {
            FUNC2(TCP_server, i);
            continue;
        }

        FUNC5(conn);

#ifndef TCP_SERVER_USE_EPOLL

        FUNC0(TCP_server, i);

#endif
    }
}