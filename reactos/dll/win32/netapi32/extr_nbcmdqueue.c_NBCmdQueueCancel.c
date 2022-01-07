
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct NBCmdQueue {int cs; } ;
typedef scalar_t__ UCHAR ;
struct TYPE_8__ {scalar_t__ ncb_retcode; } ;
typedef TYPE_1__* PNCB ;


 int * CANCEL_EVENT_PTR (TYPE_1__*) ;
 int CloseHandle (int ) ;
 int CreateEventW (int *,int ,int ,int *) ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int INFINITE ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__** NBCmdQueueFindNBC (struct NBCmdQueue*,TYPE_1__*) ;
 TYPE_1__** NEXT_PTR (TYPE_1__*) ;
 scalar_t__ NRC_BADDR ;
 scalar_t__ NRC_CANOCCR ;
 scalar_t__ NRC_CMDCAN ;
 scalar_t__ NRC_INVADDRESS ;
 int TRACE (char*,struct NBCmdQueue*,...) ;
 int WaitForSingleObject (int ,int ) ;

UCHAR NBCmdQueueCancel(struct NBCmdQueue *queue, PNCB ncb)
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
        *CANCEL_EVENT_PTR(*spot) = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
        WaitForSingleObject(*CANCEL_EVENT_PTR(*spot), INFINITE);
        CloseHandle(*CANCEL_EVENT_PTR(*spot));
        *spot = *NEXT_PTR(*spot);
        if (ncb->ncb_retcode == NRC_CMDCAN)
            ret = NRC_CMDCAN;
        else
            ret = NRC_CANOCCR;
    }
    else
        ret = NRC_INVADDRESS;
    LeaveCriticalSection(&queue->cs);
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
