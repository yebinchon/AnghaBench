
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* Flink; } ;
struct TYPE_13__ {TYPE_3__ PtiList; } ;
struct TYPE_11__ {int W32PF_flags; int peProcess; } ;
struct TYPE_10__ {TYPE_2__* ppi; } ;
typedef TYPE_1__* PTHREADINFO ;
typedef TYPE_2__* PPROCESSINFO ;
typedef TYPE_3__* PLIST_ENTRY ;
typedef TYPE_4__* PDESKTOP ;
typedef int LPARAM ;
typedef scalar_t__ HHOOK ;
typedef int BOOL ;


 TYPE_1__* CONTAINING_RECORD (TYPE_3__*,int ,int ) ;
 int FALSE ;
 int MSQ_INJECTMODULE ;
 int PsGetProcessId (int ) ;
 TYPE_2__* PsGetProcessWin32Process (int ) ;
 int PsIsSystemProcess (int ) ;
 int PtiLink ;
 int THREADINFO ;
 int TRACE (char*,int,...) ;
 int TRUE ;
 int W32PF_APIHOOKLOADED ;
 int co_MsqSendMessageAsync (TYPE_1__*,int ,int,int ,int ,int *,int ,int ,int ) ;
 int gpepCSRSS ;

BOOL
IntHookModuleUnloaded(PDESKTOP pdesk, int iHookID, HHOOK hHook)
{
    PTHREADINFO ptiCurrent;
    PLIST_ENTRY ListEntry;
    PPROCESSINFO ppiCsr;

    TRACE("IntHookModuleUnloaded: iHookID=%d\n", iHookID);

    ppiCsr = PsGetProcessWin32Process(gpepCSRSS);

    ListEntry = pdesk->PtiList.Flink;
    while(ListEntry != &pdesk->PtiList)
    {
        ptiCurrent = CONTAINING_RECORD(ListEntry, THREADINFO, PtiLink);




        if(!PsIsSystemProcess(ptiCurrent->ppi->peProcess) &&
           ptiCurrent->ppi != ppiCsr)
        {
            if(ptiCurrent->ppi->W32PF_flags & W32PF_APIHOOKLOADED)
            {
                TRACE("IntHookModuleUnloaded: sending message to PID %p, ppi=%p\n", PsGetProcessId(ptiCurrent->ppi->peProcess), ptiCurrent->ppi);
                co_MsqSendMessageAsync( ptiCurrent,
                                        0,
                                        iHookID,
                                        TRUE,
                                        (LPARAM)hHook,
                                        ((void*)0),
                                        0,
                                        FALSE,
                                        MSQ_INJECTMODULE);
            }
        }
        ListEntry = ListEntry->Flink;
    }

    return TRUE;
}
