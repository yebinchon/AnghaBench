
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_14__ {int hEnhMetaFile; int hMetaFilePict; } ;
struct TYPE_15__ {int * pUnkForRelease; int tymed; TYPE_3__ u; } ;
struct TYPE_17__ {scalar_t__ load_stream_num; TYPE_4__ stgmedium; } ;
struct TYPE_12__ {int LowPart; } ;
struct TYPE_13__ {TYPE_1__ u; } ;
struct TYPE_16__ {TYPE_2__ cbSize; } ;
typedef TYPE_4__ STGMEDIUM ;
typedef TYPE_5__ STATSTG ;
typedef int IStream ;
typedef int HRESULT ;
typedef int ENHMETAHEADER ;
typedef TYPE_6__ DataCacheEntry ;
typedef int DWORD ;
typedef int BYTE ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int IStream_Read (int *,int *,int ,int*) ;
 int IStream_Stat (int *,TYPE_5__*,int ) ;
 int ReleaseStgMedium (TYPE_4__*) ;
 int STATFLAG_NONAME ;
 scalar_t__ STREAM_NUMBER_CONTENTS ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SetEnhMetaFileBits (int,int *) ;
 int TYMED_ENHMF ;
 int load_mf_pict (TYPE_6__*,int *) ;
 int synthesize_emf (int ,TYPE_4__*) ;

__attribute__((used)) static HRESULT load_emf( DataCacheEntry *cache_entry, IStream *stm )
{
    HRESULT hr;

    if (cache_entry->load_stream_num != STREAM_NUMBER_CONTENTS)
    {
        STGMEDIUM stgmed;

        hr = load_mf_pict( cache_entry, stm );
        if (SUCCEEDED( hr ))
        {
            hr = synthesize_emf( cache_entry->stgmedium.u.hMetaFilePict, &stgmed );
            ReleaseStgMedium( &cache_entry->stgmedium );
        }
        if (SUCCEEDED( hr ))
            cache_entry->stgmedium = stgmed;
    }
    else
    {
        STATSTG stat;
        BYTE *data;
        ULONG read, size_bits;

        hr = IStream_Stat( stm, &stat, STATFLAG_NONAME );

        if (SUCCEEDED( hr ))
        {
            data = HeapAlloc( GetProcessHeap(), 0, stat.cbSize.u.LowPart );
            if (!data) return E_OUTOFMEMORY;

            hr = IStream_Read( stm, data, stat.cbSize.u.LowPart, &read );
            if (hr != S_OK)
            {
                HeapFree( GetProcessHeap(), 0, data );
                return hr;
            }

            if (read <= sizeof(DWORD) + sizeof(ENHMETAHEADER))
            {
                HeapFree( GetProcessHeap(), 0, data );
                return E_FAIL;
            }
            size_bits = read - sizeof(DWORD) - sizeof(ENHMETAHEADER);
            cache_entry->stgmedium.u.hEnhMetaFile = SetEnhMetaFileBits( size_bits, data + (read - size_bits) );
            cache_entry->stgmedium.tymed = TYMED_ENHMF;
            cache_entry->stgmedium.pUnkForRelease = ((void*)0);

            HeapFree( GetProcessHeap(), 0, data );
        }
    }

    return hr;
}
