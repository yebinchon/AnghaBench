
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct NBCmdQueue {int cs; TYPE_1__* head; } ;
typedef struct NBCmdQueue* UCHAR ;
struct TYPE_2__ {int ncb_command; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int NBCmdQueueCancel (struct NBCmdQueue*,TYPE_1__*) ;
 struct NBCmdQueue* NRC_BADDR ;
 struct NBCmdQueue* NRC_GOODRET ;
 int TRACE (char*,...) ;

UCHAR NBCmdQueueCancelAll(struct NBCmdQueue *queue)
{
    UCHAR ret;

    TRACE(": queue %p\n", queue);

    if (!queue)
        return NRC_BADDR;

    EnterCriticalSection(&queue->cs);
    while (queue->head)
    {
        TRACE(": waiting for ncb %p (command 0x%02x)\n", queue->head,
         queue->head->ncb_command);
        NBCmdQueueCancel(queue, queue->head);
    }
    LeaveCriticalSection(&queue->cs);
    ret = NRC_GOODRET;
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
