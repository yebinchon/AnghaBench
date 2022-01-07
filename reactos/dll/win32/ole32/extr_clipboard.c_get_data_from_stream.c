
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int med ;
typedef int ULARGE_INTEGER ;
struct TYPE_16__ {int tymed; } ;
struct TYPE_15__ {scalar_t__ QuadPart; } ;
struct TYPE_13__ {int * pstm; } ;
struct TYPE_14__ {TYPE_1__ u; int * pUnkForRelease; int tymed; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int IStream ;
typedef int IDataObject ;
typedef int HRESULT ;
typedef int * HGLOBAL ;
typedef TYPE_4__ FORMATETC ;


 int CreateStreamOnHGlobal (int *,int ,int **) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int * GlobalAlloc (int,int ) ;
 int GlobalFree (int *) ;
 int IDataObject_GetData (int *,TYPE_4__*,TYPE_2__*) ;
 int IDataObject_GetDataHere (int *,TYPE_4__*,TYPE_2__*) ;
 int IStream_CopyTo (int *,int *,int ,int *,int *) ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,TYPE_3__,int ,int *) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 int STREAM_SEEK_CUR ;
 int STREAM_SEEK_SET ;
 int S_OK ;
 int TYMED_ISTREAM ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static HRESULT get_data_from_stream(IDataObject *data, FORMATETC *fmt, HGLOBAL *mem)
{
    HGLOBAL h;
    IStream *stm = ((void*)0);
    HRESULT hr;
    FORMATETC stm_fmt;
    STGMEDIUM med;

    *mem = ((void*)0);

    h = GlobalAlloc( GMEM_DDESHARE|GMEM_MOVEABLE, 0 );
    if(!h) return E_OUTOFMEMORY;

    hr = CreateStreamOnHGlobal(h, FALSE, &stm);
    if(FAILED(hr)) goto error;

    stm_fmt = *fmt;
    med.tymed = stm_fmt.tymed = TYMED_ISTREAM;
    med.u.pstm = stm;
    med.pUnkForRelease = ((void*)0);

    hr = IDataObject_GetDataHere(data, &stm_fmt, &med);
    if(FAILED(hr))
    {
        LARGE_INTEGER offs;
        ULARGE_INTEGER pos;

        memset(&med, 0, sizeof(med));
        hr = IDataObject_GetData(data, &stm_fmt, &med);
        if(FAILED(hr)) goto error;

        offs.QuadPart = 0;
        IStream_Seek(med.u.pstm, offs, STREAM_SEEK_CUR, &pos);
        IStream_Seek(med.u.pstm, offs, STREAM_SEEK_SET, ((void*)0));
        hr = IStream_CopyTo(med.u.pstm, stm, pos, ((void*)0), ((void*)0));
        ReleaseStgMedium(&med);
        if(FAILED(hr)) goto error;
    }
    *mem = h;
    IStream_Release(stm);
    return S_OK;

error:
    if(stm) IStream_Release(stm);
    GlobalFree(h);
    return hr;
}
