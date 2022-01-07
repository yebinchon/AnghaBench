
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parentStorage; } ;
typedef TYPE_1__ StorageInternalImpl ;
typedef int StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;
typedef int DirEntry ;


 int StorageBaseImpl_WriteDirEntry (int ,int ,int const*) ;

__attribute__((used)) static HRESULT StorageInternalImpl_WriteDirEntry(StorageBaseImpl *base,
  DirRef index, const DirEntry *data)
{
  StorageInternalImpl* This = (StorageInternalImpl*) base;

  return StorageBaseImpl_WriteDirEntry(This->parentStorage,
    index, data);
}
