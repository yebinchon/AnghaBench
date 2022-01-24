#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* proc ) (TYPE_2__*,TYPE_1__*) ;struct TYPE_6__* next; } ;
typedef  TYPE_1__ task_header_t ;
struct TYPE_7__ {int /*<<< orphan*/  continue_call; int /*<<< orphan*/  section; int /*<<< orphan*/ * task_queue_tail; TYPE_1__* task_queue_head; } ;
typedef  TYPE_2__ BindProtocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(BindProtocol *This)
{
    task_header_t *task;

    while(1) {
        FUNC0(&This->section);

        task = This->task_queue_head;
        if(task) {
            This->task_queue_head = task->next;
            if(!This->task_queue_head)
                This->task_queue_tail = NULL;
        }

        FUNC1(&This->section);

        if(!task)
            break;

        This->continue_call++;
        task->proc(This, task);
        This->continue_call--;
    }
}