
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_5__ ITransactionDispenser_iface; TYPE_3__ ITransactionImport_iface; TYPE_2__ ITransactionImportWhereabouts_iface; TYPE_1__ IResourceManagerFactory2_iface; } ;
typedef TYPE_4__ TransactionManager ;
typedef int REFIID ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int ITransactionDispenser_QueryInterface (TYPE_5__*,int ,void**) ;
 int ITransactionDispenser_Release (TYPE_5__*) ;
 int ResourceManagerFactory2_Vtbl ;
 int TransactionDispenser_Vtbl ;
 int TransactionImportWhereabouts_Vtbl ;
 int TransactionImport_Vtbl ;

__attribute__((used)) static HRESULT TransactionManager_Create(REFIID riid, void **ppv)
{
    TransactionManager *This;
    HRESULT ret;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(TransactionManager));
    if (!This) return E_OUTOFMEMORY;

    This->ITransactionDispenser_iface.lpVtbl = &TransactionDispenser_Vtbl;
    This->IResourceManagerFactory2_iface.lpVtbl = &ResourceManagerFactory2_Vtbl;
    This->ITransactionImportWhereabouts_iface.lpVtbl = &TransactionImportWhereabouts_Vtbl;
    This->ITransactionImport_iface.lpVtbl = &TransactionImport_Vtbl;
    This->ref = 1;

    ret = ITransactionDispenser_QueryInterface(&This->ITransactionDispenser_iface, riid, ppv);
    ITransactionDispenser_Release(&This->ITransactionDispenser_iface);

    return ret;
}
