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

/* Type definitions */
struct TYPE_14__ {int custom_uint; int /*<<< orphan*/ * custom_object; } ;
struct TYPE_13__ {TYPE_2__* connection; } ;
typedef  TYPE_1__ TCP_con ;
typedef  int /*<<< orphan*/  TCP_Connections ;
typedef  TYPE_2__ TCP_Client_Connection ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  tcp_data_callback ; 
 int /*<<< orphan*/  tcp_onion_callback ; 
 int /*<<< orphan*/  tcp_oob_callback ; 
 int /*<<< orphan*/  tcp_response_callback ; 
 int /*<<< orphan*/  tcp_status_callback ; 

__attribute__((used)) static int FUNC6(TCP_Connections *tcp_c, int tcp_connections_number)
{
    TCP_con *tcp_con = FUNC0(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    TCP_Client_Connection *con = tcp_con->connection;

    con->custom_object = tcp_c;
    con->custom_uint = tcp_connections_number;
    FUNC1(con, &tcp_onion_callback, tcp_c);
    FUNC4(con, &tcp_response_callback, con);
    FUNC5(con, &tcp_status_callback, con);
    FUNC3(con, &tcp_data_callback, con);
    FUNC2(con, &tcp_oob_callback, con);

    return 0;
}