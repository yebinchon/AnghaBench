
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int openFlags; int ref; void* create; int storageDirEntry; void* reverted; int * baseVtbl; TYPE_2__ IPropertySetStorage_iface; TYPE_1__ IStorage_iface; int storageHead; int strmHead; } ;
struct TYPE_10__ {TYPE_3__ base; int * parentStorage; } ;
typedef TYPE_4__ StorageInternalImpl ;
typedef int StorageBaseImpl ;
typedef int DirRef ;
typedef int DWORD ;


 void* FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int IPropertySetStorage_Vtbl ;
 int STGM_CREATE ;
 int StorageInternalImpl_BaseVtbl ;
 int StorageInternalImpl_Vtbl ;
 int list_init (int *) ;

__attribute__((used)) static StorageInternalImpl* StorageInternalImpl_Construct(
  StorageBaseImpl* parentStorage,
  DWORD openFlags,
  DirRef storageDirEntry)
{
  StorageInternalImpl* newStorage;

  newStorage = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(StorageInternalImpl));

  if (newStorage!=0)
  {
    list_init(&newStorage->base.strmHead);

    list_init(&newStorage->base.storageHead);




    newStorage->base.IStorage_iface.lpVtbl = &StorageInternalImpl_Vtbl;
    newStorage->base.IPropertySetStorage_iface.lpVtbl = &IPropertySetStorage_Vtbl;
    newStorage->base.baseVtbl = &StorageInternalImpl_BaseVtbl;
    newStorage->base.openFlags = (openFlags & ~STGM_CREATE);

    newStorage->base.reverted = FALSE;

    newStorage->base.ref = 1;

    newStorage->parentStorage = parentStorage;




    newStorage->base.storageDirEntry = storageDirEntry;

    newStorage->base.create = FALSE;

    return newStorage;
  }

  return 0;
}
