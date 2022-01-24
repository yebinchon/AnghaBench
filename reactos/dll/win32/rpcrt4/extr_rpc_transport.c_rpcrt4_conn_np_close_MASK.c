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
struct TYPE_2__ {scalar_t__ event_cache; scalar_t__ listen_event; scalar_t__ pipe; } ;
typedef  TYPE_1__ RpcConnection_np ;
typedef  int /*<<< orphan*/  RpcConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(RpcConnection *conn)
{
    RpcConnection_np *connection = (RpcConnection_np *) conn;
    if (connection->pipe)
    {
        FUNC1(connection->pipe);
        FUNC0(connection->pipe);
        connection->pipe = 0;
    }
    if (connection->listen_event)
    {
        FUNC0(connection->listen_event);
        connection->listen_event = 0;
    }
    if (connection->event_cache)
    {
        FUNC0(connection->event_cache);
        connection->event_cache = 0;
    }
    return 0;
}