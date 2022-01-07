
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IEnumMoniker_iface; int * moniker_list; int pos; } ;
typedef int InterfaceList ;
typedef TYPE_1__ IEnumMoniker ;
typedef int HRESULT ;
typedef TYPE_2__ EnumMonikerImpl ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*) ;
 int VT_EnumMonikerImpl ;

__attribute__((used)) static HRESULT EnumMonikerImpl_CreateEnumROTMoniker(InterfaceList *moniker_list,
                                                 ULONG current_pos,
                                                 IEnumMoniker **ppenumMoniker)
{
    EnumMonikerImpl* This = ((void*)0);

    if (!ppenumMoniker)
        return E_INVALIDARG;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(EnumMonikerImpl));
    if (!This) return E_OUTOFMEMORY;

    TRACE("(%p)\n", This);


    This->IEnumMoniker_iface.lpVtbl = &VT_EnumMonikerImpl;


    This->ref = 1;
    This->pos = current_pos;
    This->moniker_list = moniker_list;

    *ppenumMoniker = &This->IEnumMoniker_iface;

    return S_OK;
}
