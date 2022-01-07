
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStorage ;
typedef int ILockBytes ;
typedef int HRESULT ;


 int CreateILockBytesOnHGlobal (int *,int ,int **) ;
 int ILockBytes_Release (int *) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ SUCCEEDED (int ) ;
 int StgCreateDocfileOnILockBytes (int *,int,int ,int **) ;
 int TRUE ;

__attribute__((used)) static HRESULT create_storage(IStorage **stg)
{
    HRESULT hr;
    ILockBytes *lock_bytes;

    hr = CreateILockBytesOnHGlobal(((void*)0), TRUE, &lock_bytes);
    if(SUCCEEDED(hr))
    {
        hr = StgCreateDocfileOnILockBytes(lock_bytes,
                  STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, stg);
        ILockBytes_Release(lock_bytes);
    }
    return hr;
}
