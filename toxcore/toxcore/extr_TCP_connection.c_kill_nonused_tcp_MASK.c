#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int tcp_connections_length; } ;
struct TYPE_7__ {scalar_t__ status; int /*<<< orphan*/  connected_time; int /*<<< orphan*/  lock_count; int /*<<< orphan*/  onion; } ;
typedef  TYPE_1__ TCP_con ;
typedef  TYPE_2__ TCP_Connections ;

/* Variables and functions */
 unsigned int RECOMMENDED_FRIEND_TCP_CONNECTIONS ; 
 int /*<<< orphan*/  TCP_CONNECTION_ANNOUNCE_TIMEOUT ; 
 scalar_t__ TCP_CONN_CONNECTED ; 
 TYPE_1__* FUNC0 (TYPE_2__*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static void FUNC3(TCP_Connections *tcp_c)
{
    if (tcp_c->tcp_connections_length == 0)
        return;

    unsigned int i, num_online = 0, num_kill = 0, to_kill[tcp_c->tcp_connections_length];

    for (i = 0; i < tcp_c->tcp_connections_length; ++i) {
        TCP_con *tcp_con = FUNC0(tcp_c, i);

        if (tcp_con) {
            if (tcp_con->status == TCP_CONN_CONNECTED) {
                if (!tcp_con->onion && !tcp_con->lock_count && FUNC1(tcp_con->connected_time, TCP_CONNECTION_ANNOUNCE_TIMEOUT)) {
                    to_kill[num_kill] = i;
                    ++num_kill;
                }

                ++num_online;
            }
        }
    }

    if (num_online <= RECOMMENDED_FRIEND_TCP_CONNECTIONS) {
        return;
    } else {
        unsigned int n = num_online - RECOMMENDED_FRIEND_TCP_CONNECTIONS;

        if (n < num_kill)
            num_kill = n;
    }

    for (i = 0; i < num_kill; ++i) {
        FUNC2(tcp_c, to_kill[i]);
    }
}