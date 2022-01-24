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
struct pbuf {int /*<<< orphan*/  tot_len; } ;
typedef  scalar_t__ const err_t ;
struct TYPE_4__ {scalar_t__ SendShutdown; int /*<<< orphan*/ * SocketContext; int /*<<< orphan*/  ReceiveShutdownStatus; int /*<<< orphan*/  ReceiveShutdown; } ;
typedef  int /*<<< orphan*/  PTCP_PCB ;
typedef  TYPE_1__* PCONNECTION_ENDPOINT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_CLSD ; 
 scalar_t__ const ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct pbuf*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
err_t
FUNC6(void *arg, PTCP_PCB pcb, struct pbuf *p, const err_t err)
{
    PCONNECTION_ENDPOINT Connection = arg;

    /* Make sure the socket didn't get closed */
    if (!arg)
    {
        if (p)
            FUNC3(p);

        return ERR_OK;
    }

    if (p)
    {
        FUNC0(Connection, p);

        FUNC5(pcb, p->tot_len);

        FUNC2(arg);
    }
    else if (err == ERR_OK)
    {
        /* Complete pending reads with 0 bytes to indicate a graceful closure,
         * but note that send is still possible in this state so we don't close the
         * whole socket here (by calling tcp_close()) as that would violate TCP specs
         */
        Connection->ReceiveShutdown = TRUE;
        Connection->ReceiveShutdownStatus = STATUS_SUCCESS;

        /* If we already did a send shutdown, we're in TIME_WAIT so we can't use this PCB anymore */
        if (Connection->SendShutdown)
        {
            Connection->SocketContext = NULL;
            FUNC4(pcb, NULL);
        }

        /* Indicate the graceful close event */
        FUNC2(arg);

        /* If the PCB is gone, clean up the connection */
        if (Connection->SendShutdown)
        {
            FUNC1(Connection, ERR_CLSD);
        }
    }

    return ERR_OK;
}