
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NBCmdQueue {int cs; } ;
typedef int UCHAR ;
typedef int PNCB ;


 scalar_t__* CANCEL_EVENT_PTR (int ) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int * NBCmdQueueFindNBC (struct NBCmdQueue*,int ) ;
 int * NEXT_PTR (int ) ;
 int NRC_BADDR ;
 int NRC_GOODRET ;
 int NRC_INVADDRESS ;
 int SetEvent (scalar_t__) ;
 int TRACE (char*,struct NBCmdQueue*,...) ;

UCHAR NBCmdQueueComplete(struct NBCmdQueue *queue, PNCB ncb, UCHAR retcode)
{
    UCHAR ret;
    PNCB *spot;

    TRACE(": queue %p, ncb %p\n", queue, ncb);

    if (!queue)
        return NRC_BADDR;
    if (!ncb)
        return NRC_INVADDRESS;

    EnterCriticalSection(&queue->cs);
    spot = NBCmdQueueFindNBC(queue, ncb);
    if (spot)
    {
        if (*CANCEL_EVENT_PTR(*spot))
            SetEvent(*CANCEL_EVENT_PTR(*spot));
        else
            *spot = *NEXT_PTR(*spot);
        ret = NRC_GOODRET;
    }
    else
        ret = NRC_INVADDRESS;
    LeaveCriticalSection(&queue->cs);
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
