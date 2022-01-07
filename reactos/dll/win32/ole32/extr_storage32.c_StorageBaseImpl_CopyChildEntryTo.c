
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {scalar_t__ stgType; scalar_t__ leftChild; scalar_t__ rightChild; int name; } ;
struct TYPE_8__ {int cbSize; } ;
struct TYPE_7__ {int IStream_iface; } ;
typedef int StorageBaseImpl ;
typedef TYPE_1__ StgStreamImpl ;
typedef TYPE_2__ STATSTG ;
typedef int ** SNB ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DirRef ;
typedef TYPE_3__ DirEntry ;
typedef int BOOL ;


 scalar_t__ DIRENTRY_NULL ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 scalar_t__ IStorage_CreateStorage (int *,int ,int,int ,int ,int **) ;
 scalar_t__ IStorage_CreateStream (int *,int ,int,int ,int ,int **) ;
 scalar_t__ IStorage_OpenStorage (int *,int ,int *,int,int *,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_AddRef (int *) ;
 scalar_t__ IStream_CopyTo (int *,int *,int ,int *,int *) ;
 int IStream_Release (int *) ;
 int IStream_SetSize (int *,int ) ;
 int IStream_Stat (int *,TYPE_2__*,int ) ;
 int STATFLAG_NONAME ;
 int STGM_CREATE ;
 int STGM_FAILIFTHERE ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 scalar_t__ STGTY_STORAGE ;
 scalar_t__ STGTY_STREAM ;
 scalar_t__ STG_E_FILEALREADYEXISTS ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 TYPE_1__* StgStreamImpl_Construct (int *,int,scalar_t__) ;
 scalar_t__ StorageBaseImpl_CopyStorageEntryTo (int *,scalar_t__,int ,int ,int *,int *) ;
 scalar_t__ StorageBaseImpl_ReadDirEntry (int *,scalar_t__,TYPE_3__*) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 scalar_t__ wcscmp (int ,int *) ;

__attribute__((used)) static HRESULT StorageBaseImpl_CopyChildEntryTo(StorageBaseImpl *This,
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

  hr = StorageBaseImpl_ReadDirEntry( This, srcEntry, &data );

  if (FAILED(hr))
    return hr;

  if ( snbExclude )
  {
    WCHAR **snb = snbExclude;

    while ( *snb != ((void*)0) && !skip )
    {
      if ( wcscmp(data.name, *snb) == 0 )
        skip = TRUE;
      ++snb;
    }
  }

  if (!skip)
  {
    if (data.stgType == STGTY_STORAGE && !skip_storage)
    {



      hr = IStorage_CreateStorage( pstgDest, data.name,
                                   STGM_FAILIFTHERE|STGM_WRITE|STGM_SHARE_EXCLUSIVE,
                                   0, 0,
                                   &pstgTmp );




      if (hr == STG_E_FILEALREADYEXISTS)
      {
        hr = IStorage_OpenStorage( pstgDest, data.name, ((void*)0),
                                   STGM_WRITE|STGM_SHARE_EXCLUSIVE,
                                   ((void*)0), 0, &pstgTmp );
      }

      if (SUCCEEDED(hr))
      {
        hr = StorageBaseImpl_CopyStorageEntryTo( This, srcEntry, skip_storage,
                                                 skip_stream, ((void*)0), pstgTmp );

        IStorage_Release(pstgTmp);
      }
    }
    else if (data.stgType == STGTY_STREAM && !skip_stream)
    {




      hr = IStorage_CreateStream( pstgDest, data.name,
                                  STGM_CREATE|STGM_WRITE|STGM_SHARE_EXCLUSIVE,
                                  0, 0, &pstrTmp );





      if (hr == S_OK)
      {
        StgStreamImpl *streamimpl = StgStreamImpl_Construct(This, STGM_READ|STGM_SHARE_EXCLUSIVE, srcEntry);

        if (streamimpl)
        {
          pstrChild = &streamimpl->IStream_iface;
          if (pstrChild)
            IStream_AddRef(pstrChild);
        }
        else
        {
          pstrChild = ((void*)0);
          hr = E_OUTOFMEMORY;
        }
      }

      if (hr == S_OK)
      {



        IStream_Stat( pstrChild, &strStat, STATFLAG_NONAME );




        IStream_SetSize(pstrTmp, strStat.cbSize);




        hr = IStream_CopyTo( pstrChild, pstrTmp, strStat.cbSize,
                             ((void*)0), ((void*)0) );

        IStream_Release( pstrChild );
      }

      IStream_Release( pstrTmp );
    }
  }


  if (SUCCEEDED(hr))
    hr = StorageBaseImpl_CopyChildEntryTo( This, data.leftChild, skip_storage,
                                           skip_stream, snbExclude, pstgDest );

  if (SUCCEEDED(hr))
    hr = StorageBaseImpl_CopyChildEntryTo( This, data.rightChild, skip_storage,
                                           skip_stream, snbExclude, pstgDest );

  TRACE("<-- %08x\n", hr);
  return hr;
}
