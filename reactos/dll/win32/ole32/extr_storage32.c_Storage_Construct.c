
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {int IStorage_iface; } ;
struct TYPE_7__ {TYPE_2__ base; } ;
typedef TYPE_1__ StorageImpl ;
typedef TYPE_2__ StorageBaseImpl ;
typedef int LPCOLESTR ;
typedef int ILockBytes ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int IStorage_Release (int *) ;
 int STGM_TRANSACTED ;
 int StorageImpl_Construct (int ,int ,int *,int,int ,int ,int ,TYPE_1__**) ;
 int Storage_ConstructTransacted (TYPE_2__*,int ,TYPE_2__**) ;
 int TRUE ;

__attribute__((used)) static HRESULT Storage_Construct(
  HANDLE hFile,
  LPCOLESTR pwcsName,
  ILockBytes* pLkbyt,
  DWORD openFlags,
  BOOL fileBased,
  BOOL create,
  ULONG sector_size,
  StorageBaseImpl** result)
{
  StorageImpl *newStorage;
  StorageBaseImpl *newTransactedStorage;
  HRESULT hr;

  hr = StorageImpl_Construct(hFile, pwcsName, pLkbyt, openFlags, fileBased, create, sector_size, &newStorage);
  if (FAILED(hr)) goto end;

  if (openFlags & STGM_TRANSACTED)
  {
    hr = Storage_ConstructTransacted(&newStorage->base, TRUE, &newTransactedStorage);
    if (FAILED(hr))
      IStorage_Release(&newStorage->base.IStorage_iface);
    else
      *result = newTransactedStorage;
  }
  else
    *result = &newStorage->base;

end:
  return hr;
}
