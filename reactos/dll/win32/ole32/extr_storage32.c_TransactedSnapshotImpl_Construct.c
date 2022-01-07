
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_13__ {int lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_15__ {int ref; int storageDirEntry; int openFlags; int storageHead; int strmHead; int * baseVtbl; TYPE_2__ IPropertySetStorage_iface; TYPE_1__ IStorage_iface; } ;
struct TYPE_16__ {int entries_size; TYPE_4__ base; TYPE_6__* transactedParent; void* entries; scalar_t__ firstFreeEntry; int scratch; int lastTransactionSig; } ;
typedef TYPE_5__ TransactedSnapshotImpl ;
typedef int TransactedDirEntry ;
struct TYPE_14__ {int lpVtbl; } ;
struct TYPE_17__ {int storageDirEntry; TYPE_4__* transactedChild; int openFlags; TYPE_3__ IPropertySetStorage_iface; } ;
typedef TYPE_6__ StorageBaseImpl ;
typedef int IStorage ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 int IStorage_Release (int *) ;
 int STGM_CREATE ;
 int STGM_DELETEONRELEASE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ SUCCEEDED (int ) ;
 int StgCreateDocfile (int *,int,int ,int **) ;
 int StorageBaseImpl_GetTransactionSig (TYPE_6__*,int *,int ) ;
 int TransactedSnapshotImpl_BaseVtbl ;
 int TransactedSnapshotImpl_CreateStubEntry (TYPE_5__*,int ) ;
 int TransactedSnapshotImpl_Vtbl ;
 int impl_from_IStorage (int *) ;
 int list_init (int *) ;

__attribute__((used)) static HRESULT TransactedSnapshotImpl_Construct(StorageBaseImpl *parentStorage,
  TransactedSnapshotImpl** result)
{
  HRESULT hr;

  *result = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(TransactedSnapshotImpl));
  if (*result)
  {
    IStorage *scratch;

    (*result)->base.IStorage_iface.lpVtbl = &TransactedSnapshotImpl_Vtbl;


    (*result)->base.IPropertySetStorage_iface.lpVtbl = parentStorage->IPropertySetStorage_iface.lpVtbl;
    (*result)->base.baseVtbl = &TransactedSnapshotImpl_BaseVtbl;

    list_init(&(*result)->base.strmHead);

    list_init(&(*result)->base.storageHead);

    (*result)->base.ref = 1;

    (*result)->base.openFlags = parentStorage->openFlags;


    StorageBaseImpl_GetTransactionSig(parentStorage, &(*result)->lastTransactionSig, FALSE);


    hr = StgCreateDocfile(((void*)0), STGM_READWRITE|STGM_SHARE_EXCLUSIVE|STGM_CREATE|STGM_DELETEONRELEASE,
        0, &scratch);
    (*result)->scratch = impl_from_IStorage(scratch);

    if (SUCCEEDED(hr))
    {
        ULONG num_entries = 20;

        (*result)->entries = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(TransactedDirEntry) * num_entries);
        (*result)->entries_size = num_entries;
        (*result)->firstFreeEntry = 0;

        if ((*result)->entries)
        {

            (*result)->transactedParent = parentStorage;

            parentStorage->transactedChild = &(*result)->base;

            (*result)->base.storageDirEntry = TransactedSnapshotImpl_CreateStubEntry(*result, parentStorage->storageDirEntry);
        }
        else
        {
            IStorage_Release(scratch);

            hr = E_OUTOFMEMORY;
        }
    }

    if (FAILED(hr)) HeapFree(GetProcessHeap(), 0, *result);

    return hr;
  }
  else
    return E_OUTOFMEMORY;
}
