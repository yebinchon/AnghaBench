
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ ISynchronize_iface; int event; TYPE_1__ ISynchronizeHandle_iface; } ;
typedef int REFIID ;
typedef TYPE_2__ MREImpl ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int ISynchronize_QueryInterface (TYPE_3__*,int ,void**) ;
 int ISynchronize_Release (TYPE_3__*) ;
 int SynchronizeHandleVtbl ;
 int TRUE ;
 int vt_ISynchronize ;

__attribute__((used)) static HRESULT ManualResetEvent_Construct(IUnknown *punkouter, REFIID iid, void **ppv)
{
    MREImpl *This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(MREImpl));
    HRESULT hr;

    if(punkouter)
        FIXME("Aggregation not implemented.\n");

    This->ref = 1;
    This->ISynchronize_iface.lpVtbl = &vt_ISynchronize;
    This->ISynchronizeHandle_iface.lpVtbl = &SynchronizeHandleVtbl;
    This->event = CreateEventW(((void*)0), TRUE, FALSE, ((void*)0));

    hr = ISynchronize_QueryInterface(&This->ISynchronize_iface, iid, ppv);
    ISynchronize_Release(&This->ISynchronize_iface);
    return hr;
}
