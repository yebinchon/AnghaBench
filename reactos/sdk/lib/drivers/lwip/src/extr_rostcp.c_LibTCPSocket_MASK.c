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
struct tcp_pcb {int dummy; } ;
struct TYPE_5__ {struct tcp_pcb* NewPcb; } ;
struct TYPE_6__ {TYPE_1__ Socket; } ;
struct TYPE_7__ {void* Arg; } ;
struct TYPE_8__ {TYPE_3__ Socket; } ;
struct lwip_callback_msg {TYPE_2__ Output; int /*<<< orphan*/  Event; TYPE_4__ Input; } ;

/* Variables and functions */
 struct lwip_callback_msg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct lwip_callback_msg*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LibTCPSocketCallback ; 
 int /*<<< orphan*/  MessageLookasideList ; 
 int /*<<< orphan*/  NotificationEvent ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct lwip_callback_msg*,int) ; 

struct tcp_pcb *
FUNC5(void *arg)
{
    struct lwip_callback_msg *msg = FUNC0(&MessageLookasideList);
    struct tcp_pcb *ret;

    if (msg)
    {
        FUNC2(&msg->Event, NotificationEvent, FALSE);
        msg->Input.Socket.Arg = arg;

        FUNC4(LibTCPSocketCallback, msg, 1);

        if (FUNC3(&msg->Event))
            ret = msg->Output.Socket.NewPcb;
        else
            ret = NULL;

        FUNC1(&MessageLookasideList, msg);

        return ret;
    }

    return NULL;
}