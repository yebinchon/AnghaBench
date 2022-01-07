
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULARGE_INTEGER ;
struct TYPE_4__ {int QuadPart; } ;
struct TYPE_5__ {TYPE_1__ cbSize; } ;
typedef TYPE_2__ STATSTG ;
typedef int LPVOID ;
typedef int IStream ;
typedef int IStorage ;
typedef int ILockBytes ;
typedef int HRESULT ;
typedef int DWORD ;


 int CreateILockBytesOnHGlobal (int *,int ,int **) ;
 int ERR (char*) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int ILockBytes_Release (int *) ;
 int ILockBytes_WriteAt (int *,int ,int ,int,int*) ;
 int IStream_Read (int *,int ,int,int*) ;
 int IStream_Stat (int *,TYPE_2__*,int ) ;
 int STATFLAG_NONAME ;
 int STGM_READWRITE ;
 int STGM_SHARE_DENY_NONE ;
 int StgOpenStorageOnILockBytes (int *,int *,int,int *,int ,int **) ;
 int TRUE ;
 int ZeroMemory (int *,int) ;
 int msi_alloc (int) ;
 int msi_free (int ) ;

__attribute__((used)) static HRESULT stream_to_storage(IStream *stm, IStorage **stg)
{
    ILockBytes *lockbytes = ((void*)0);
    STATSTG stat;
    LPVOID data;
    HRESULT hr;
    DWORD size, read;
    ULARGE_INTEGER offset;

    hr = IStream_Stat(stm, &stat, STATFLAG_NONAME);
    if (FAILED(hr))
        return hr;

    if (stat.cbSize.QuadPart >> 32)
    {
        ERR("Storage is too large\n");
        return E_FAIL;
    }

    size = stat.cbSize.QuadPart;
    data = msi_alloc(size);
    if (!data)
        return E_OUTOFMEMORY;

    hr = IStream_Read(stm, data, size, &read);
    if (FAILED(hr) || read != size)
        goto done;

    hr = CreateILockBytesOnHGlobal(((void*)0), TRUE, &lockbytes);
    if (FAILED(hr))
        goto done;

    ZeroMemory(&offset, sizeof(ULARGE_INTEGER));
    hr = ILockBytes_WriteAt(lockbytes, offset, data, size, &read);
    if (FAILED(hr) || read != size)
        goto done;

    hr = StgOpenStorageOnILockBytes(lockbytes, ((void*)0),
                                    STGM_READWRITE | STGM_SHARE_DENY_NONE,
                                    ((void*)0), 0, stg);
    if (FAILED(hr))
        goto done;

done:
    msi_free(data);
    if (lockbytes) ILockBytes_Release(lockbytes);
    return hr;
}
