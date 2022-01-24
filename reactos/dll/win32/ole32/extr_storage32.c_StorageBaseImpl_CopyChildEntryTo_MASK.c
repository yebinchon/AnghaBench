#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {scalar_t__ stgType; scalar_t__ leftChild; scalar_t__ rightChild; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  cbSize; } ;
struct TYPE_7__ {int /*<<< orphan*/  IStream_iface; } ;
typedef  int /*<<< orphan*/  StorageBaseImpl ;
typedef  TYPE_1__ StgStreamImpl ;
typedef  TYPE_2__ STATSTG ;
typedef  int /*<<< orphan*/ ** SNB ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DirRef ;
typedef  TYPE_3__ DirEntry ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ DIRENTRY_NULL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATFLAG_NONAME ; 
 int STGM_CREATE ; 
 int STGM_FAILIFTHERE ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 scalar_t__ STGTY_STORAGE ; 
 scalar_t__ STGTY_STREAM ; 
 scalar_t__ STG_E_FILEALREADYEXISTS ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC16(StorageBaseImpl *This,
    DirRef srcEntry, BOOL skip_storage, BOOL skip_stream,
    SNB snbExclude, IStorage *pstgDest)
{
  DirEntry data;
  HRESULT hr;
  BOOL skip = FALSE;
  IStorage *pstgTmp;
  IStream *pstrChild, *pstrTmp;
  STATSTG strStat;

  if (srcEntry == DIRENTRY_NULL)
    return S_OK;

  hr = FUNC13( This, srcEntry, &data );

  if (FUNC0(hr))
    return hr;

  if ( snbExclude )
  {
    WCHAR **snb = snbExclude;

    while ( *snb != NULL && !skip )
    {
      if ( FUNC15(data.name, *snb) == 0 )
        skip = TRUE;
      ++snb;
    }
  }

  if (!skip)
  {
    if (data.stgType == STGTY_STORAGE && !skip_storage)
    {
      /*
       * create a new storage in destination storage
       */
      hr = FUNC1( pstgDest, data.name,
                                   STGM_FAILIFTHERE|STGM_WRITE|STGM_SHARE_EXCLUSIVE,
                                   0, 0,
                                   &pstgTmp );

      /*
       * if it already exist, don't create a new one use this one
       */
      if (hr == STG_E_FILEALREADYEXISTS)
      {
        hr = FUNC3( pstgDest, data.name, NULL,
                                   STGM_WRITE|STGM_SHARE_EXCLUSIVE,
                                   NULL, 0, &pstgTmp );
      }

      if (FUNC10(hr))
      {
        hr = FUNC12( This, srcEntry, skip_storage,
                                                 skip_stream, NULL, pstgTmp );

        FUNC4(pstgTmp);
      }
    }
    else if (data.stgType == STGTY_STREAM && !skip_stream)
    {
      /*
       * create a new stream in destination storage. If the stream already
       * exist, it will be deleted and a new one will be created.
       */
      hr = FUNC2( pstgDest, data.name,
                                  STGM_CREATE|STGM_WRITE|STGM_SHARE_EXCLUSIVE,
                                  0, 0, &pstrTmp );

      /*
       * open child stream storage. This operation must succeed even if the
       * stream is already open, so we use internal functions to do it.
       */
      if (hr == S_OK)
      {
        StgStreamImpl *streamimpl = FUNC11(This, STGM_READ|STGM_SHARE_EXCLUSIVE, srcEntry);

        if (streamimpl)
        {
          pstrChild = &streamimpl->IStream_iface;
          if (pstrChild)
            FUNC5(pstrChild);
        }
        else
        {
          pstrChild = NULL;
          hr = E_OUTOFMEMORY;
        }
      }

      if (hr == S_OK)
      {
        /*
         * Get the size of the source stream
         */
        FUNC9( pstrChild, &strStat, STATFLAG_NONAME );

        /*
         * Set the size of the destination stream.
         */
        FUNC8(pstrTmp, strStat.cbSize);

        /*
         * do the copy
         */
        hr = FUNC6( pstrChild, pstrTmp, strStat.cbSize,
                             NULL, NULL );

        FUNC7( pstrChild );
      }

      FUNC7( pstrTmp );
    }
  }

  /* copy siblings */
  if (FUNC10(hr))
    hr = FUNC16( This, data.leftChild, skip_storage,
                                           skip_stream, snbExclude, pstgDest );

  if (FUNC10(hr))
    hr = FUNC16( This, data.rightChild, skip_storage,
                                           skip_stream, snbExclude, pstgDest );

  FUNC14("<-- %08x\n", hr);
  return hr;
}