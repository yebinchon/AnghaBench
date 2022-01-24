#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_4__ {int /*<<< orphan*/  ReceiveShutdownStatus; int /*<<< orphan*/  ReceiveShutdown; int /*<<< orphan*/ * SocketContext; } ;
typedef  TYPE_1__* PCONNECTION_ENDPOINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
void
FUNC3(void *arg, const err_t err)
{
    PCONNECTION_ENDPOINT Connection = arg;

    /* Make sure the socket didn't get closed */
    if (!arg || Connection->SocketContext == NULL) return;

    /* The PCB is dead now */
    Connection->SocketContext = NULL;

    /* Give them one shot to receive the remaining data */
    Connection->ReceiveShutdown = TRUE;
    Connection->ReceiveShutdownStatus = FUNC2(err);
    FUNC1(Connection);

    /* Terminate the connection */
    FUNC0(Connection, err);
}