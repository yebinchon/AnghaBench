
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* proc ) (TYPE_2__*,TYPE_1__*) ;struct TYPE_6__* next; } ;
typedef TYPE_1__ task_header_t ;
struct TYPE_7__ {int continue_call; int section; int * task_queue_tail; TYPE_1__* task_queue_head; } ;
typedef TYPE_2__ BindProtocol ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void process_tasks(BindProtocol *This)
{
    task_header_t *task;

    while(1) {
        EnterCriticalSection(&This->section);

        task = This->task_queue_head;
        if(task) {
            This->task_queue_head = task->next;
            if(!This->task_queue_head)
                This->task_queue_tail = ((void*)0);
        }

        LeaveCriticalSection(&This->section);

        if(!task)
            break;

        This->continue_call++;
        task->proc(This, task);
        This->continue_call--;
    }
}
