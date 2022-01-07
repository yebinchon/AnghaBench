
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int ULONG ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_18__ {int openFlags; int ref; TYPE_10__ IStorage_iface; int reverted; int lockingrole; int create; int * baseVtbl; TYPE_2__ IDirectWriterLock_iface; TYPE_1__ IPropertySetStorage_iface; int storageHead; int strmHead; } ;
struct TYPE_17__ {int grfLocksSupported; } ;
struct TYPE_16__ {TYPE_8__ base; int locks_supported; int * lockBytes; int smallBlockSize; int bigBlockSize; } ;
typedef TYPE_3__ StorageImpl ;
typedef TYPE_4__ STATSTG ;
typedef int LPCOLESTR ;
typedef int ILockBytes ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int DEF_SMALL_BLOCK_SIZE ;
 int DirectWriterLockVtbl ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FileLockBytesImpl_Construct (scalar_t__,int,int ,int **) ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int ILockBytes_AddRef (int *) ;
 int ILockBytes_Stat (int *,TYPE_4__*,int ) ;
 int IPropertySetStorage_Vtbl ;
 int IStorage_Release (TYPE_10__*) ;
 int STATFLAG_NONAME ;
 int STGM_CREATE ;
 int STGM_DIRECT_SWMR ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int STGM_SHARE_DENY_NONE ;
 int STGM_SHARE_DENY_WRITE ;
 int STG_E_INVALIDFLAG ;
 scalar_t__ SUCCEEDED (int ) ;
 int SWMR_None ;
 int SWMR_Reader ;
 int SWMR_Writer ;
 int S_OK ;
 int StorageImpl_BaseVtbl ;
 int StorageImpl_Flush (TYPE_8__*) ;
 int StorageImpl_GrabLocks (TYPE_3__*,int) ;
 int StorageImpl_Refresh (TYPE_3__*,int ,int ) ;
 int StorageImpl_Vtbl ;
 int TRUE ;
 int WINE_LOCK_READ ;
 int list_init (int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int validateSTGM (int) ;

__attribute__((used)) static HRESULT StorageImpl_Construct(
  HANDLE hFile,
  LPCOLESTR pwcsName,
  ILockBytes* pLkbyt,
  DWORD openFlags,
  BOOL fileBased,
  BOOL create,
  ULONG sector_size,
  StorageImpl** result)
{
  StorageImpl* This;
  HRESULT hr = S_OK;
  STATSTG stat;

  if ( FAILED( validateSTGM(openFlags) ))
    return STG_E_INVALIDFLAG;

  This = HeapAlloc(GetProcessHeap(), 0, sizeof(StorageImpl));
  if (!This)
    return E_OUTOFMEMORY;

  memset(This, 0, sizeof(StorageImpl));

  list_init(&This->base.strmHead);

  list_init(&This->base.storageHead);

  This->base.IStorage_iface.lpVtbl = &StorageImpl_Vtbl;
  This->base.IPropertySetStorage_iface.lpVtbl = &IPropertySetStorage_Vtbl;
  This->base.IDirectWriterLock_iface.lpVtbl = &DirectWriterLockVtbl;
  This->base.baseVtbl = &StorageImpl_BaseVtbl;
  This->base.openFlags = (openFlags & ~STGM_CREATE);
  This->base.ref = 1;
  This->base.create = create;

  if (openFlags == (STGM_DIRECT_SWMR|STGM_READWRITE|STGM_SHARE_DENY_WRITE))
    This->base.lockingrole = SWMR_Writer;
  else if (openFlags == (STGM_DIRECT_SWMR|STGM_READ|STGM_SHARE_DENY_NONE))
    This->base.lockingrole = SWMR_Reader;
  else
    This->base.lockingrole = SWMR_None;

  This->base.reverted = FALSE;




  This->bigBlockSize = sector_size;
  This->smallBlockSize = DEF_SMALL_BLOCK_SIZE;
  if (hFile)
    hr = FileLockBytesImpl_Construct(hFile, openFlags, pwcsName, &This->lockBytes);
  else
  {
    This->lockBytes = pLkbyt;
    ILockBytes_AddRef(pLkbyt);
  }

  if (SUCCEEDED(hr))
    hr = ILockBytes_Stat(This->lockBytes, &stat, STATFLAG_NONAME);

  if (SUCCEEDED(hr))
  {
    This->locks_supported = stat.grfLocksSupported;
    if (!hFile)

        This->locks_supported &= ~WINE_LOCK_READ;

    hr = StorageImpl_GrabLocks(This, openFlags);
  }

  if (SUCCEEDED(hr))
    hr = StorageImpl_Refresh(This, TRUE, create);

  if (FAILED(hr))
  {
    IStorage_Release(&This->base.IStorage_iface);
    *result = ((void*)0);
  }
  else
  {
    StorageImpl_Flush(&This->base);
    *result = This;
  }

  return hr;
}
