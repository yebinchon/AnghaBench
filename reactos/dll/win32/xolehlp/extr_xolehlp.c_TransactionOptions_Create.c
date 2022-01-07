
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ ITransactionOptions_iface; } ;
typedef TYPE_1__ TransactionOptions ;
typedef TYPE_2__ ITransactionOptions ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TransactionOptions_Vtbl ;

__attribute__((used)) static HRESULT TransactionOptions_Create(ITransactionOptions **ppv)
{
    TransactionOptions *This;

    if (!ppv) return E_INVALIDARG;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(TransactionOptions));
    if (!This) return E_OUTOFMEMORY;

    This->ITransactionOptions_iface.lpVtbl = &TransactionOptions_Vtbl;
    This->ref = 1;

    *ppv = &This->ITransactionOptions_iface;

    return S_OK;
}
