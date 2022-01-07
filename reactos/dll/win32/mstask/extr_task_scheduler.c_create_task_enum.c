
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IEnumWorkItems_iface; } ;
typedef TYPE_1__ IEnumWorkItems ;
typedef int HRESULT ;
typedef TYPE_2__ EnumWorkItemsImpl ;


 int E_OUTOFMEMORY ;
 int EnumWorkItemsVtbl ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int InterlockedIncrement (int *) ;
 int S_OK ;
 int dll_ref ;

__attribute__((used)) static HRESULT create_task_enum(IEnumWorkItems **ret)
{
    EnumWorkItemsImpl *tasks;

    *ret = ((void*)0);

    tasks = HeapAlloc(GetProcessHeap(), 0, sizeof(*tasks));
    if (!tasks)
        return E_OUTOFMEMORY;

    tasks->IEnumWorkItems_iface.lpVtbl = &EnumWorkItemsVtbl;
    tasks->ref = 1;

    *ret = &tasks->IEnumWorkItems_iface;
    InterlockedIncrement(&dll_ref);
    return S_OK;
}
