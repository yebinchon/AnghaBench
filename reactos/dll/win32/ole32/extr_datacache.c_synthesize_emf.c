
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int hMF; } ;
struct TYPE_7__ {int hEnhMetaFile; } ;
struct TYPE_8__ {int * pUnkForRelease; int tymed; TYPE_1__ u; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef TYPE_3__ METAFILEPICT ;
typedef int HRESULT ;
typedef int HMETAFILEPICT ;


 int E_FAIL ;
 int GetMetaFileBitsEx (int ,int ,void*) ;
 int GetProcessHeap () ;
 TYPE_3__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 void* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,void*) ;
 int S_OK ;
 int SetWinMetaFileBits (int ,void*,int *,TYPE_3__*) ;
 int TYMED_ENHMF ;

__attribute__((used)) static HRESULT synthesize_emf( HMETAFILEPICT data, STGMEDIUM *med )
{
    METAFILEPICT *pict;
    HRESULT hr = E_FAIL;
    UINT size;
    void *bits;

    if (!(pict = GlobalLock( data ))) return hr;

    size = GetMetaFileBitsEx( pict->hMF, 0, ((void*)0) );
    if ((bits = HeapAlloc( GetProcessHeap(), 0, size )))
    {
        GetMetaFileBitsEx( pict->hMF, size, bits );
        med->u.hEnhMetaFile = SetWinMetaFileBits( size, bits, ((void*)0), pict );
        HeapFree( GetProcessHeap(), 0, bits );
        med->tymed = TYMED_ENHMF;
        med->pUnkForRelease = ((void*)0);
        hr = S_OK;
    }

    GlobalUnlock( data );
    return hr;
}
