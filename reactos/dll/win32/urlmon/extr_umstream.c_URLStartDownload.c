
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTREAM ;
typedef int LPCWSTR ;
typedef int IMoniker ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateBindCtx (int ,int **) ;
 scalar_t__ CreateURLMoniker (int *,int ,int **) ;
 scalar_t__ E_PENDING ;
 scalar_t__ FAILED (scalar_t__) ;
 int IBindCtx_Release (int *) ;
 int IID_IStream ;
 scalar_t__ IMoniker_BindToStorage (int *,int *,int *,int *,void**) ;
 int IMoniker_Release (int *) ;
 scalar_t__ RegisterBindStatusCallback (int *,int *,int *,int ) ;
 scalar_t__ S_OK ;

__attribute__((used)) static HRESULT URLStartDownload(LPCWSTR szURL, LPSTREAM *ppStream, IBindStatusCallback *pBSC)
{
    HRESULT hr;
    IMoniker *pMoniker;
    IBindCtx *pbc;

    *ppStream = ((void*)0);

    hr = CreateURLMoniker(((void*)0), szURL, &pMoniker);
    if (FAILED(hr))
        return hr;

    hr = CreateBindCtx(0, &pbc);
    if (FAILED(hr))
    {
        IMoniker_Release(pMoniker);
        return hr;
    }

    hr = RegisterBindStatusCallback(pbc, pBSC, ((void*)0), 0);
    if (FAILED(hr))
    {
        IBindCtx_Release(pbc);
        IMoniker_Release(pMoniker);
        return hr;
    }

    hr = IMoniker_BindToStorage(pMoniker, pbc, ((void*)0), &IID_IStream, (void **)ppStream);


    if (hr == E_PENDING) hr = S_OK;

    IBindCtx_Release(pbc);
    IMoniker_Release(pMoniker);

    return hr;
}
