
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* scratch; } ;
typedef TYPE_2__ TransactedSharedImpl ;
struct TYPE_3__ {int base; } ;
typedef int StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;
typedef int DirEntry ;


 int StorageBaseImpl_CreateDirEntry (int *,int const*,int *) ;

__attribute__((used)) static HRESULT TransactedSharedImpl_CreateDirEntry(StorageBaseImpl *base,
  const DirEntry *newData, DirRef *index)
{
  TransactedSharedImpl* This = (TransactedSharedImpl*) base;

  return StorageBaseImpl_CreateDirEntry(&This->scratch->base,
    newData, index);
}
