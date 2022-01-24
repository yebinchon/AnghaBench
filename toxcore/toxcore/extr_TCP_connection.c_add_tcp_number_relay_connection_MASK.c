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
struct TYPE_7__ {scalar_t__ status; int /*<<< orphan*/  public_key; } ;
struct TYPE_6__ {scalar_t__ status; int unsleep; int /*<<< orphan*/  connected_time; } ;
typedef  TYPE_1__ TCP_con ;
typedef  int /*<<< orphan*/  TCP_Connections ;
typedef  TYPE_2__ TCP_Connection_to ;

/* Variables and functions */
 scalar_t__ TCP_CONN_CONNECTED ; 
 scalar_t__ TCP_CONN_SLEEPING ; 
 int FUNC0 (TYPE_2__*,unsigned int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(TCP_Connections *tcp_c, int connections_number, unsigned int tcp_connections_number)
{
    TCP_Connection_to *con_to = FUNC1(tcp_c, connections_number);

    if (!con_to)
        return -1;

    TCP_con *tcp_con = FUNC2(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    if (con_to->status != TCP_CONN_SLEEPING && tcp_con->status == TCP_CONN_SLEEPING) {
        tcp_con->unsleep = 1;
    }

    if (FUNC0(con_to, tcp_connections_number) == -1)
        return -1;

    if (tcp_con->status == TCP_CONN_CONNECTED) {
        if (FUNC3(tcp_c, tcp_connections_number, con_to->public_key) == 0) {
            tcp_con->connected_time = FUNC4();
        }
    }

    return 0;
}