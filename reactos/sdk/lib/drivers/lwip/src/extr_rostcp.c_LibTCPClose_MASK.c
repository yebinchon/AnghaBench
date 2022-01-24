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
struct TYPE_8__ {TYPE_3__ Close; } ;
struct TYPE_5__ {int Callback; int /*<<< orphan*/  Connection; } ;
struct TYPE_6__ {TYPE_1__ Close; } ;
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
 int /*<<< orphan*/  FUNC3 (struct lwip_callback_msg*) ; 
 int /*<<< orphan*/  MessageLookasideList ; 
 int /*<<< orphan*/  NotificationEvent ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  (*) (struct lwip_callback_msg*),struct lwip_callback_msg*,int) ; 

err_t
FUNC6(PCONNECTION_ENDPOINT Connection, const int safe, const int callback)
{
    err_t ret;
    struct lwip_callback_msg *msg;

    msg = FUNC0(&MessageLookasideList);
    if (msg)
    {
        FUNC2(&msg->Event, NotificationEvent, FALSE);

        msg->Input.Close.Connection = Connection;
        msg->Input.Close.Callback = callback;

        if (safe)
            FUNC3(msg);
        else
            FUNC5(LibTCPCloseCallback, msg, 1);

        if (FUNC4(&msg->Event))
            ret = msg->Output.Close.Error;
        else
            ret = ERR_CLSD;

        FUNC1(&MessageLookasideList, msg);

        return ret;
    }

    return ERR_MEM;
}