
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; int maxRunTime; TYPE_3__ ITask_iface; int * accountName; int * comment; int * parameters; int * applicationName; void* taskName; TYPE_1__ IPersistFile_iface; } ;
typedef TYPE_2__ TaskImpl ;
typedef TYPE_3__* LPVOID ;
typedef int LPCWSTR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int InterlockedIncrement (int *) ;
 int MSTASK_IPersistFileVtbl ;
 int MSTASK_ITaskVtbl ;
 int S_OK ;
 int TRACE (char*,int ,TYPE_3__**) ;
 int debugstr_w (int ) ;
 int dll_ref ;
 int lstrcpyW (void*,int ) ;
 int lstrlenW (int ) ;

HRESULT TaskConstructor(LPCWSTR pwszTaskName, LPVOID *ppObj)
{
    TaskImpl *This;
    int n;

    TRACE("(%s, %p)\n", debugstr_w(pwszTaskName), ppObj);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This)
        return E_OUTOFMEMORY;

    This->ITask_iface.lpVtbl = &MSTASK_ITaskVtbl;
    This->IPersistFile_iface.lpVtbl = &MSTASK_IPersistFileVtbl;
    This->ref = 1;
    n = (lstrlenW(pwszTaskName) + 1) * sizeof(WCHAR);
    This->taskName = HeapAlloc(GetProcessHeap(), 0, n);
    if (!This->taskName)
    {
        HeapFree(GetProcessHeap(), 0, This);
        return E_OUTOFMEMORY;
    }
    lstrcpyW(This->taskName, pwszTaskName);
    This->applicationName = ((void*)0);
    This->parameters = ((void*)0);
    This->comment = ((void*)0);
    This->accountName = ((void*)0);


    This->maxRunTime = 259200000;

    *ppObj = &This->ITask_iface;
    InterlockedIncrement(&dll_ref);
    return S_OK;
}
