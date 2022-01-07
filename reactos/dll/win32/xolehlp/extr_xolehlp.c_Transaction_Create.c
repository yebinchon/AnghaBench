
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int isoFlags; int isoLevel; } ;
struct TYPE_6__ {int ref; TYPE_2__ ITransaction_iface; TYPE_3__ info; } ;
typedef TYPE_1__ Transaction ;
typedef int ITransactionOptions ;
typedef TYPE_2__ ITransaction ;
typedef int ISOLEVEL ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int Transaction_Vtbl ;
 int ZeroMemory (TYPE_3__*,int) ;

__attribute__((used)) static HRESULT Transaction_Create(ISOLEVEL isoLevel, ULONG isoFlags,
        ITransactionOptions *pOptions, ITransaction **ppv)
{
    Transaction *This;

    if (!ppv) return E_INVALIDARG;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(Transaction));
    if (!This) return E_OUTOFMEMORY;
    ZeroMemory(&This->info, sizeof(This->info));

    This->ITransaction_iface.lpVtbl = &Transaction_Vtbl;
    This->ref = 1;
    This->info.isoLevel = isoLevel;
    This->info.isoFlags = isoFlags;

    *ppv = &This->ITransaction_iface;

    return S_OK;
}
