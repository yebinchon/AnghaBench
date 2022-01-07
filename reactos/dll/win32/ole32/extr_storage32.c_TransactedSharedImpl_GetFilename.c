
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transactedParent; } ;
typedef TYPE_1__ TransactedSharedImpl ;
typedef int StorageBaseImpl ;
typedef int LPWSTR ;
typedef int HRESULT ;


 int StorageBaseImpl_GetFilename (int ,int *) ;

__attribute__((used)) static HRESULT TransactedSharedImpl_GetFilename(StorageBaseImpl* iface, LPWSTR *result)
{
  TransactedSharedImpl* This = (TransactedSharedImpl*) iface;

  return StorageBaseImpl_GetFilename(This->transactedParent, result);
}
