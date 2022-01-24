#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* DebugInfo; } ;
struct NBCmdQueue {int /*<<< orphan*/  heap; TYPE_2__ cs; } ;
struct TYPE_3__ {scalar_t__* Spare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct NBCmdQueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct NBCmdQueue*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct NBCmdQueue*) ; 

void FUNC4(struct NBCmdQueue *queue)
{
    FUNC3(": queue %p\n", queue);

    if (queue)
    {
        FUNC2(queue);
        queue->cs.DebugInfo->Spare[0] = 0;
        FUNC0(&queue->cs);
        FUNC1(queue->heap, 0, queue);
    }
}