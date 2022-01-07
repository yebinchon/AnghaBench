
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NBCmdQueue {int cs; scalar_t__ head; } ;
typedef int UCHAR ;
typedef scalar_t__ PNCB ;


 int ** CANCEL_EVENT_PTR (scalar_t__) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__* NEXT_PTR (scalar_t__) ;
 int NRC_BADDR ;
 int NRC_GOODRET ;
 int NRC_INVADDRESS ;
 int TRACE (char*,struct NBCmdQueue*,...) ;

UCHAR NBCmdQueueAdd(struct NBCmdQueue *queue, PNCB ncb)
{
    UCHAR ret;

    TRACE(": queue %p, ncb %p\n", queue, ncb);

    if (!queue)
        return NRC_BADDR;
    if (!ncb)
        return NRC_INVADDRESS;

    *CANCEL_EVENT_PTR(ncb) = ((void*)0);
    EnterCriticalSection(&queue->cs);
    *NEXT_PTR(ncb) = queue->head;
    queue->head = ncb;
    ret = NRC_GOODRET;
    LeaveCriticalSection(&queue->cs);
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
