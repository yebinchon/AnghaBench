#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_13__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_15__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_18__ {int openFlags; int ref; TYPE_10__ IStorage_iface; int /*<<< orphan*/  reverted; int /*<<< orphan*/  lockingrole; int /*<<< orphan*/  create; int /*<<< orphan*/ * baseVtbl; TYPE_2__ IDirectWriterLock_iface; TYPE_1__ IPropertySetStorage_iface; int /*<<< orphan*/  storageHead; int /*<<< orphan*/  strmHead; } ;
struct TYPE_17__ {int /*<<< orphan*/  grfLocksSupported; } ;
struct TYPE_16__ {TYPE_8__ base; int /*<<< orphan*/  locks_supported; int /*<<< orphan*/ * lockBytes; int /*<<< orphan*/  smallBlockSize; int /*<<< orphan*/  bigBlockSize; } ;
typedef  TYPE_3__ StorageImpl ;
typedef  TYPE_4__ STATSTG ;
typedef  int /*<<< orphan*/  LPCOLESTR ;
typedef  int /*<<< orphan*/  ILockBytes ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_SMALL_BLOCK_SIZE ; 
 int /*<<< orphan*/  DirectWriterLockVtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPropertySetStorage_Vtbl ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int STGM_CREATE ; 
 int STGM_DIRECT_SWMR ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_DENY_NONE ; 
 int STGM_SHARE_DENY_WRITE ; 
 int /*<<< orphan*/  STG_E_INVALIDFLAG ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWMR_None ; 
 int /*<<< orphan*/  SWMR_Reader ; 
 int /*<<< orphan*/  SWMR_Writer ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  StorageImpl_BaseVtbl ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StorageImpl_Vtbl ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WINE_LOCK_READ ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static HRESULT FUNC14(
  HANDLE       hFile,
  LPCOLESTR    pwcsName,
  ILockBytes*  pLkbyt,
  DWORD        openFlags,
  BOOL         fileBased,
  BOOL         create,
  ULONG        sector_size,
  StorageImpl** result)
{
  StorageImpl* This;
  HRESULT hr = S_OK;
  STATSTG stat;

  if ( FUNC0( FUNC13(openFlags) ))
    return STG_E_INVALIDFLAG;

  This = FUNC3(FUNC2(), 0, sizeof(StorageImpl));
  if (!This)
    return E_OUTOFMEMORY;

  FUNC12(This, 0, sizeof(StorageImpl));

  FUNC11(&This->base.strmHead);

  FUNC11(&This->base.storageHead);

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

  /*
   * Initialize the big block cache.
   */
  This->bigBlockSize   = sector_size;
  This->smallBlockSize = DEF_SMALL_BLOCK_SIZE;
  if (hFile)
    hr = FUNC1(hFile, openFlags, pwcsName, &This->lockBytes);
  else
  {
    This->lockBytes = pLkbyt;
    FUNC4(pLkbyt);
  }

  if (FUNC7(hr))
    hr = FUNC5(This->lockBytes, &stat, STATFLAG_NONAME);

  if (FUNC7(hr))
  {
    This->locks_supported = stat.grfLocksSupported;
    if (!hFile)
        /* Don't try to use wine-internal locking flag with custom ILockBytes */
        This->locks_supported &= ~WINE_LOCK_READ;

    hr = FUNC9(This, openFlags);
  }

  if (FUNC7(hr))
    hr = FUNC10(This, TRUE, create);

  if (FUNC0(hr))
  {
    FUNC6(&This->base.IStorage_iface);
    *result = NULL;
  }
  else
  {
    FUNC8(&This->base);
    *result = This;
  }

  return hr;
}