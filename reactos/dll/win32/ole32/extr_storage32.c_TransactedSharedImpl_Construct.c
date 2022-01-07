
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;


struct TYPE_19__ {int storageDirEntry; } ;
struct TYPE_24__ {TYPE_14__ base; } ;
typedef TYPE_5__ TransactedSnapshotImpl ;
struct TYPE_21__ {int lpVtbl; } ;
struct TYPE_20__ {int * lpVtbl; } ;
struct TYPE_23__ {int ref; int storageDirEntry; int openFlags; int storageHead; int strmHead; int * baseVtbl; TYPE_2__ IPropertySetStorage_iface; TYPE_1__ IStorage_iface; } ;
struct TYPE_25__ {TYPE_7__* transactedParent; TYPE_5__* scratch; TYPE_4__ base; int lastTransactionSig; } ;
typedef TYPE_6__ TransactedSharedImpl ;
struct TYPE_27__ {int usVersion; int ulSectorSize; int * pwcsTemplateFile; scalar_t__ reserved; } ;
struct TYPE_22__ {int lpVtbl; } ;
struct TYPE_26__ {int storageDirEntry; int openFlags; TYPE_3__ IPropertySetStorage_iface; } ;
typedef TYPE_7__ StorageBaseImpl ;
typedef TYPE_8__ STGOPTIONS ;
typedef int IStorage ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_6__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_6__*) ;
 int IID_IStorage ;
 int IStorage_Commit (int *,int ) ;
 int IStorage_Release (int *) ;
 int STGC_DEFAULT ;
 int STGFMT_DOCFILE ;
 int STGM_CREATE ;
 int STGM_DELETEONRELEASE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_TRANSACTED ;
 scalar_t__ SUCCEEDED (int ) ;
 int StgCreateStorageEx (int *,int,int ,int ,TYPE_8__*,int *,int *,void**) ;
 int StorageBaseImpl_CopyStorageTree (TYPE_14__*,int ,TYPE_7__*,int ) ;
 int StorageBaseImpl_GetTransactionSig (TYPE_7__*,int *,int ) ;
 int StorageBaseImpl_LockTransaction (TYPE_7__*,int ) ;
 int StorageBaseImpl_UnlockTransaction (TYPE_7__*,int ) ;
 int TransactedSharedImpl_BaseVtbl ;
 int TransactedSharedImpl_Vtbl ;
 scalar_t__ impl_from_IStorage (int *) ;
 int list_init (int *) ;

__attribute__((used)) static HRESULT TransactedSharedImpl_Construct(StorageBaseImpl *parentStorage,
  TransactedSharedImpl** result)
{
  HRESULT hr;

  *result = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(TransactedSharedImpl));
  if (*result)
  {
    IStorage *scratch;

    (*result)->base.IStorage_iface.lpVtbl = &TransactedSharedImpl_Vtbl;


    (*result)->base.IPropertySetStorage_iface.lpVtbl = parentStorage->IPropertySetStorage_iface.lpVtbl;
    (*result)->base.baseVtbl = &TransactedSharedImpl_BaseVtbl;

    list_init(&(*result)->base.strmHead);

    list_init(&(*result)->base.storageHead);

    (*result)->base.ref = 1;

    (*result)->base.openFlags = parentStorage->openFlags;

    hr = StorageBaseImpl_LockTransaction(parentStorage, FALSE);

    if (SUCCEEDED(hr))
    {
      STGOPTIONS stgo;


      StorageBaseImpl_GetTransactionSig(parentStorage, &(*result)->lastTransactionSig, FALSE);

      stgo.usVersion = 1;
      stgo.reserved = 0;
      stgo.ulSectorSize = 4096;
      stgo.pwcsTemplateFile = ((void*)0);


      hr = StgCreateStorageEx(((void*)0), STGM_READWRITE|STGM_SHARE_EXCLUSIVE|STGM_CREATE|STGM_DELETEONRELEASE|STGM_TRANSACTED,
          STGFMT_DOCFILE, 0, &stgo, ((void*)0), &IID_IStorage, (void**)&scratch);
      (*result)->scratch = (TransactedSnapshotImpl*)impl_from_IStorage(scratch);

      if (SUCCEEDED(hr))
      {
        hr = StorageBaseImpl_CopyStorageTree(&(*result)->scratch->base, (*result)->scratch->base.storageDirEntry,
          parentStorage, parentStorage->storageDirEntry);

        if (SUCCEEDED(hr))
        {
          hr = IStorage_Commit(scratch, STGC_DEFAULT);

          (*result)->base.storageDirEntry = (*result)->scratch->base.storageDirEntry;
          (*result)->transactedParent = parentStorage;
        }

        if (FAILED(hr))
          IStorage_Release(scratch);
      }

      StorageBaseImpl_UnlockTransaction(parentStorage, FALSE);
    }

    if (FAILED(hr)) HeapFree(GetProcessHeap(), 0, *result);

    return hr;
  }
  else
    return E_OUTOFMEMORY;
}
