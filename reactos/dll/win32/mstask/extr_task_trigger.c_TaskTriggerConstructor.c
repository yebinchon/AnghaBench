
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_11__ {int DaysInterval; } ;
struct TYPE_12__ {TYPE_1__ Daily; } ;
struct TYPE_16__ {int cbTriggerSize; TYPE_2__ Type; int TriggerType; int rgFlags; int wStartMinute; int wStartHour; int wBeginDay; int wBeginMonth; int wBeginYear; } ;
struct TYPE_13__ {int ref; TYPE_5__ ITaskTrigger_iface; TYPE_6__ triggerCond; } ;
typedef TYPE_3__ TaskTriggerImpl ;
struct TYPE_14__ {int wMinute; int wHour; int wDay; int wMonth; int wYear; } ;
typedef int TASK_TRIGGER ;
typedef TYPE_4__ SYSTEMTIME ;
typedef TYPE_5__* LPVOID ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetLocalTime (TYPE_4__*) ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int InterlockedIncrement (int *) ;
 int MSTASK_ITaskTriggerVtbl ;
 int S_OK ;
 int TASK_TIME_TRIGGER_DAILY ;
 int TASK_TRIGGER_FLAG_DISABLED ;
 int TRACE (char*,TYPE_5__**) ;
 int dll_ref ;
 int memset (TYPE_6__*,int ,int) ;

HRESULT TaskTriggerConstructor(LPVOID *ppObj)
{
    TaskTriggerImpl *This;
    SYSTEMTIME time;
    TRACE("(%p)\n", ppObj);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->ITaskTrigger_iface.lpVtbl = &MSTASK_ITaskTriggerVtbl;
    This->ref = 1;



    memset(&This->triggerCond, 0, sizeof(TASK_TRIGGER));
    GetLocalTime(&time);
    This->triggerCond.cbTriggerSize = sizeof(This->triggerCond);
    This->triggerCond.wBeginYear = time.wYear;
    This->triggerCond.wBeginMonth = time.wMonth;
    This->triggerCond.wBeginDay = time.wDay;
    This->triggerCond.wStartHour = time.wHour;
    This->triggerCond.wStartMinute = time.wMinute;
    This->triggerCond.rgFlags = TASK_TRIGGER_FLAG_DISABLED;
    This->triggerCond.TriggerType = TASK_TIME_TRIGGER_DAILY,
    This->triggerCond.Type.Daily.DaysInterval = 1;

    *ppObj = &This->ITaskTrigger_iface;
    InterlockedIncrement(&dll_ref);
    return S_OK;
}
