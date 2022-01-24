#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  Error; } ;
struct TYPE_8__ {TYPE_3__ Shutdown; } ;
struct TYPE_5__ {int shut_rx; int shut_tx; int /*<<< orphan*/  Connection; } ;
struct TYPE_6__ {TYPE_1__ Shutdown; } ;
struct lwip_callback_msg {TYPE_4__ Output; int /*<<< orphan*/  Event; TYPE_2__ Input; } ;
typedef  int /*<<< orphan*/  err_t ;
typedef  int /*<<< orphan*/  PCONNECTION_ENDPOINT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_CLSD ; 
 int /*<<< orphan*/  ERR_MEM ; 
 struct lwip_callback_msg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct lwip_callback_msg*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LibTCPShutdownCallback ; 
 int /*<<< orphan*/  MessageLookasideList ; 
 int /*<<< orphan*/  NotificationEvent ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct lwip_callback_msg*,int) ; 

err_t
FUNC5(PCONNECTION_ENDPOINT Connection, const int shut_rx, const int shut_tx)
{
    struct lwip_callback_msg *msg;
    err_t ret;

    msg = FUNC0(&MessageLookasideList);
    if (msg)
    {
        FUNC2(&msg->Event, NotificationEvent, FALSE);

        msg->Input.Shutdown.Connection = Connection;
        msg->Input.Shutdown.shut_rx = shut_rx;
        msg->Input.Shutdown.shut_tx = shut_tx;

        FUNC4(LibTCPShutdownCallback, msg, 1);

        if (FUNC3(&msg->Event))
            ret = msg->Output.Shutdown.Error;
        else
            ret = ERR_CLSD;

        FUNC1(&MessageLookasideList, msg);

        return ret;
    }

    return ERR_MEM;
}