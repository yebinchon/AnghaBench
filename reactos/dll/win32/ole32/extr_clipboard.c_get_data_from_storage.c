
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int med ;
struct TYPE_13__ {int tymed; } ;
struct TYPE_11__ {int * pstg; } ;
struct TYPE_12__ {TYPE_1__ u; int * pUnkForRelease; int tymed; } ;
typedef TYPE_2__ STGMEDIUM ;
typedef int IStorage ;
typedef int ILockBytes ;
typedef int IDataObject ;
typedef int HRESULT ;
typedef int * HGLOBAL ;
typedef TYPE_3__ FORMATETC ;


 int CreateILockBytesOnHGlobal (int *,int ,int **) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int * GlobalAlloc (int,int ) ;
 int GlobalFree (int *) ;
 int IDataObject_GetData (int *,TYPE_3__*,TYPE_2__*) ;
 int IDataObject_GetDataHere (int *,TYPE_3__*,TYPE_2__*) ;
 int ILockBytes_Release (int *) ;
 int IStorage_CopyTo (int *,int ,int *,int *,int *) ;
 int IStorage_Release (int *) ;
 int ReleaseStgMedium (TYPE_2__*) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ SUCCEEDED (int ) ;
 int StgCreateDocfileOnILockBytes (int *,int,int ,int **) ;
 int TYMED_ISTORAGE ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static HRESULT get_data_from_storage(IDataObject *data, FORMATETC *fmt, HGLOBAL *mem)
{
    HGLOBAL h;
    IStorage *stg;
    HRESULT hr;
    FORMATETC stg_fmt;
    STGMEDIUM med;
    ILockBytes *lbs;

    *mem = ((void*)0);

    h = GlobalAlloc( GMEM_DDESHARE|GMEM_MOVEABLE, 0 );
    if(!h) return E_OUTOFMEMORY;

    hr = CreateILockBytesOnHGlobal(h, FALSE, &lbs);
    if(SUCCEEDED(hr))
    {
        hr = StgCreateDocfileOnILockBytes(lbs, STGM_CREATE|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stg);
        ILockBytes_Release(lbs);
    }
    if(FAILED(hr))
    {
        GlobalFree(h);
        return hr;
    }

    stg_fmt = *fmt;
    med.tymed = stg_fmt.tymed = TYMED_ISTORAGE;
    med.u.pstg = stg;
    med.pUnkForRelease = ((void*)0);

    hr = IDataObject_GetDataHere(data, &stg_fmt, &med);
    if(FAILED(hr))
    {
        memset(&med, 0, sizeof(med));
        hr = IDataObject_GetData(data, &stg_fmt, &med);
        if(FAILED(hr)) goto end;

        hr = IStorage_CopyTo(med.u.pstg, 0, ((void*)0), ((void*)0), stg);
        ReleaseStgMedium(&med);
        if(FAILED(hr)) goto end;
    }
    *mem = h;

end:
    IStorage_Release(stg);
    if(FAILED(hr)) GlobalFree(h);
    return hr;
}
