
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; int storageDirEntry; TYPE_2__* parentStorage; scalar_t__* name; TYPE_1__ IEnumSTATSTG_iface; } ;
struct TYPE_8__ {int IStorage_iface; } ;
typedef TYPE_2__ StorageBaseImpl ;
typedef TYPE_3__ IEnumSTATSTGImpl ;
typedef int DirRef ;


 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int IEnumSTATSTGImpl_Vtbl ;
 int IStorage_AddRef (int *) ;

__attribute__((used)) static IEnumSTATSTGImpl* IEnumSTATSTGImpl_Construct(
  StorageBaseImpl* parentStorage,
  DirRef storageDirEntry)
{
  IEnumSTATSTGImpl* newEnumeration;

  newEnumeration = HeapAlloc(GetProcessHeap(), 0, sizeof(IEnumSTATSTGImpl));

  if (newEnumeration)
  {
    newEnumeration->IEnumSTATSTG_iface.lpVtbl = &IEnumSTATSTGImpl_Vtbl;
    newEnumeration->ref = 1;
    newEnumeration->name[0] = 0;





    newEnumeration->parentStorage = parentStorage;
    IStorage_AddRef(&newEnumeration->parentStorage->IStorage_iface);

    newEnumeration->storageDirEntry = storageDirEntry;
  }

  return newEnumeration;
}
