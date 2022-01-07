
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* itemDelimiter; struct TYPE_5__* itemName; scalar_t__ pMarshal; } ;
typedef TYPE_1__ ItemMonikerImpl ;
typedef int HRESULT ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IUnknown_Release (scalar_t__) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static HRESULT ItemMonikerImpl_Destroy(ItemMonikerImpl* This)
{
    TRACE("(%p)\n",This);

    if (This->pMarshal) IUnknown_Release(This->pMarshal);
    HeapFree(GetProcessHeap(),0,This->itemName);
    HeapFree(GetProcessHeap(),0,This->itemDelimiter);
    HeapFree(GetProcessHeap(),0,This);

    return S_OK;
}
