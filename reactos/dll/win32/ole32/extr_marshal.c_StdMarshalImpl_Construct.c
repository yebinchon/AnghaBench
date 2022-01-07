
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {TYPE_2__ IMarshal_iface; void* dest_context_data; int dest_context; scalar_t__ ref; } ;
typedef TYPE_1__ StdMarshalImpl ;
typedef int REFIID ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IMarshal_QueryInterface (TYPE_2__*,int ,void**) ;
 int StdMarshalVtbl ;

__attribute__((used)) static HRESULT StdMarshalImpl_Construct(REFIID riid, DWORD dest_context, void *dest_context_data, void** ppvObject)
{
    HRESULT hr;

    StdMarshalImpl *pStdMarshal = HeapAlloc(GetProcessHeap(), 0, sizeof(StdMarshalImpl));
    if (!pStdMarshal)
        return E_OUTOFMEMORY;

    pStdMarshal->IMarshal_iface.lpVtbl = &StdMarshalVtbl;
    pStdMarshal->ref = 0;
    pStdMarshal->dest_context = dest_context;
    pStdMarshal->dest_context_data = dest_context_data;

    hr = IMarshal_QueryInterface(&pStdMarshal->IMarshal_iface, riid, ppvObject);
    if (FAILED(hr))
        HeapFree(GetProcessHeap(), 0, pStdMarshal);

    return hr;
}
