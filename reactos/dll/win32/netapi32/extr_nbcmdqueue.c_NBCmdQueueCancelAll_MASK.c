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
struct NBCmdQueue {int /*<<< orphan*/  cs; TYPE_1__* head; } ;
typedef  struct NBCmdQueue* UCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  ncb_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct NBCmdQueue*,TYPE_1__*) ; 
 struct NBCmdQueue* NRC_BADDR ; 
 struct NBCmdQueue* NRC_GOODRET ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

UCHAR FUNC4(struct NBCmdQueue *queue)
{
    UCHAR ret;

    FUNC3(": queue %p\n", queue);

    if (!queue)
        return NRC_BADDR;

    FUNC0(&queue->cs);
    while (queue->head)
    {
        FUNC3(": waiting for ncb %p (command 0x%02x)\n", queue->head,
         queue->head->ncb_command);
        FUNC2(queue, queue->head);
    }
    FUNC1(&queue->cs);
    ret = NRC_GOODRET;
    FUNC3("returning 0x%02x\n", ret);
    return ret;
}