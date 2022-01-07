
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULARGE_INTEGER ;
struct TYPE_2__ {int parentStorage; } ;
typedef TYPE_1__ StorageInternalImpl ;
typedef int StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;


 int StorageBaseImpl_StreamSetSize (int ,int ,int ) ;

__attribute__((used)) static HRESULT StorageInternalImpl_StreamSetSize(StorageBaseImpl *base,
  DirRef index, ULARGE_INTEGER newsize)
{
  StorageInternalImpl* This = (StorageInternalImpl*) base;

  return StorageBaseImpl_StreamSetSize(This->parentStorage,
    index, newsize);
}
