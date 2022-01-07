
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parentStorage; } ;
typedef TYPE_1__ StorageInternalImpl ;
typedef int StorageBaseImpl ;
typedef int LPWSTR ;
typedef int HRESULT ;


 int StorageBaseImpl_GetFilename (int ,int *) ;

__attribute__((used)) static HRESULT StorageInternalImpl_GetFilename(StorageBaseImpl* iface, LPWSTR *result)
{
  StorageInternalImpl* This = (StorageInternalImpl*) iface;

  return StorageBaseImpl_GetFilename(This->parentStorage, result);
}
