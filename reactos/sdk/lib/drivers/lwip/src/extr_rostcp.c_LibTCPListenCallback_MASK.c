#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * NewPcb; } ;
struct TYPE_9__ {TYPE_3__ Listen; } ;
struct TYPE_6__ {int /*<<< orphan*/  Backlog; TYPE_5__* Connection; } ;
struct TYPE_7__ {TYPE_1__ Listen; } ;
struct lwip_callback_msg {int /*<<< orphan*/  Event; TYPE_4__ Output; TYPE_2__ Input; } ;
struct TYPE_10__ {scalar_t__ SocketContext; } ;
typedef  int /*<<< orphan*/  PTCP_PCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lwip_callback_msg*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IO_NO_INCREMENT ; 
 int /*<<< orphan*/  InternalAcceptEventHandler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC4(void *arg)
{
    struct lwip_callback_msg *msg = arg;

    FUNC0(msg);

    if (!msg->Input.Listen.Connection->SocketContext)
    {
        msg->Output.Listen.NewPcb = NULL;
        goto done;
    }

    msg->Output.Listen.NewPcb = FUNC3((PTCP_PCB)msg->Input.Listen.Connection->SocketContext, msg->Input.Listen.Backlog);

    if (msg->Output.Listen.NewPcb)
    {
        FUNC2(msg->Output.Listen.NewPcb, InternalAcceptEventHandler);
    }

done:
    FUNC1(&msg->Event, IO_NO_INCREMENT, FALSE);
}