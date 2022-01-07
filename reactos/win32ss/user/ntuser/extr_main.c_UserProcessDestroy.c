
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int * hdeskStartup; TYPE_1__* peProcess; } ;
struct TYPE_11__ {scalar_t__ UniqueProcessId; int ImageFileName; } ;
typedef TYPE_2__* PPROCESSINFO ;
typedef int PEPROCESS ;
typedef int NTSTATUS ;


 int ASSERT (TYPE_2__*) ;
 scalar_t__ DBG_IS_CHANNEL_ENABLED (TYPE_2__*,int ,int ) ;
 int DbgChUserObj ;
 int DbgUserDumpHandleTable () ;
 int FALSE ;
 int IntCleanupCurIconCache (TYPE_2__*) ;
 TYPE_2__* PsGetProcessWin32Process (int ) ;
 int STATUS_SUCCESS ;
 int TRACE_CH (int ,char*,TYPE_2__*,...) ;
 int UserDestroyObjectsForOwner (int ,TYPE_2__*) ;
 int UserObj ;
 int UserProcess ;
 int UserSetProcessWindowStation (int *) ;
 int WARN_LEVEL ;
 int ZwClose (int *) ;
 int co_IntGraphicsCheck (int ) ;
 int gHandleTable ;
 scalar_t__ gpidLogon ;
 TYPE_2__* gppiInputProvider ;
 TYPE_2__* ppiScrnSaver ;

NTSTATUS
UserProcessDestroy(PEPROCESS Process)
{
    PPROCESSINFO ppiCurrent = PsGetProcessWin32Process(Process);
    ASSERT(ppiCurrent);

    if (ppiScrnSaver == ppiCurrent)
        ppiScrnSaver = ((void*)0);


    UserDestroyObjectsForOwner(gHandleTable, ppiCurrent);

    TRACE_CH(UserProcess, "Freeing ppi 0x%p\n", ppiCurrent);
    co_IntGraphicsCheck(FALSE);




    if (gpidLogon == ppiCurrent->peProcess->UniqueProcessId)
        gpidLogon = 0;


    UserSetProcessWindowStation(((void*)0));

    if (gppiInputProvider == ppiCurrent) gppiInputProvider = ((void*)0);

    if (ppiCurrent->hdeskStartup)
    {
        ZwClose(ppiCurrent->hdeskStartup);
        ppiCurrent->hdeskStartup = ((void*)0);
    }


    IntCleanupCurIconCache(ppiCurrent);

    return STATUS_SUCCESS;
}
