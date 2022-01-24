#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sock; int /*<<< orphan*/  cancel_event; int /*<<< orphan*/  sock_event; } ;
typedef  TYPE_1__ RpcConnection_tcp ;
typedef  int /*<<< orphan*/  RpcConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(RpcConnection *conn)
{
    RpcConnection_tcp *connection = (RpcConnection_tcp *) conn;

    FUNC1("%d\n", connection->sock);

    if (connection->sock != -1)
        FUNC2(connection->sock);
    connection->sock = -1;
    FUNC0(connection->sock_event);
    FUNC0(connection->cancel_event);
    return 0;
}