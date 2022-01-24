#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  TCP_con ;
typedef  int /*<<< orphan*/  TCP_Connections ;
typedef  int /*<<< orphan*/  TCP_Connection_to ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 scalar_t__ RECOMMENDED_FRIEND_TCP_CONNECTIONS ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(TCP_Connections *tcp_c, int connections_number, IP_Port ip_port, const uint8_t *relay_pk)
{
    TCP_Connection_to *con_to = FUNC4(tcp_c, connections_number);

    if (!con_to)
        return -1;

    int tcp_connections_number = FUNC3(tcp_c, relay_pk);

    if (tcp_connections_number != -1) {
        return FUNC1(tcp_c, connections_number, tcp_connections_number);
    } else {
        if (FUNC6(con_to) >= RECOMMENDED_FRIEND_TCP_CONNECTIONS) {
            return -1;
        }

        int tcp_connections_number = FUNC2(tcp_c, ip_port, relay_pk);

        TCP_con *tcp_con = FUNC5(tcp_c, tcp_connections_number);

        if (!tcp_con)
            return -1;

        if (FUNC0(con_to, tcp_connections_number) == -1) {
            return -1;
        }

        return 0;
    }
}