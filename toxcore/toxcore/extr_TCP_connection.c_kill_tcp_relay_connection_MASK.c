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
struct TYPE_9__ {unsigned int connections_length; int /*<<< orphan*/  onion_num_conns; } ;
struct TYPE_8__ {int /*<<< orphan*/  connection; scalar_t__ onion; } ;
typedef  TYPE_1__ TCP_con ;
typedef  TYPE_2__ TCP_Connections ;
typedef  int /*<<< orphan*/  TCP_Connection_to ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,unsigned int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC5(TCP_Connections *tcp_c, int tcp_connections_number)
{
    TCP_con *tcp_con = FUNC1(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    unsigned int i;

    for (i = 0; i < tcp_c->connections_length; ++i) {
        TCP_Connection_to *con_to = FUNC0(tcp_c, i);

        if (con_to) {
            FUNC3(con_to, tcp_connections_number);
        }
    }

    if (tcp_con->onion) {
        --tcp_c->onion_num_conns;
    }

    FUNC2(tcp_con->connection);

    return FUNC4(tcp_c, tcp_connections_number);
}