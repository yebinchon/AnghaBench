
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* DebugInfo; } ;
struct NBCmdQueue {int heap; TYPE_2__ cs; } ;
struct TYPE_3__ {scalar_t__* Spare; } ;


 int DeleteCriticalSection (TYPE_2__*) ;
 int HeapFree (int ,int ,struct NBCmdQueue*) ;
 int NBCmdQueueCancelAll (struct NBCmdQueue*) ;
 int TRACE (char*,struct NBCmdQueue*) ;

void NBCmdQueueDestroy(struct NBCmdQueue *queue)
{
    TRACE(": queue %p\n", queue);

    if (queue)
    {
        NBCmdQueueCancelAll(queue);
        queue->cs.DebugInfo->Spare[0] = 0;
        DeleteCriticalSection(&queue->cs);
        HeapFree(queue->heap, 0, queue);
    }
}
