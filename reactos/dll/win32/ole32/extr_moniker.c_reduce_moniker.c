
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IMoniker ;
typedef int IBindCtx ;
typedef int HRESULT ;


 int CreateBindCtx (int ,int **) ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int IBindCtx_Release (int *) ;
 int IMoniker_Reduce (int *,int *,int ,int *,int **) ;
 int MKRREDUCE_ALL ;

__attribute__((used)) static HRESULT reduce_moniker(IMoniker *pmk, IBindCtx *pbc, IMoniker **pmkReduced)
{
    IBindCtx *pbcNew = ((void*)0);
    HRESULT hr;
    if (!pbc)
    {
        hr = CreateBindCtx(0, &pbcNew);
        if (FAILED(hr))
            return hr;
        pbc = pbcNew;
    }
    hr = IMoniker_Reduce(pmk, pbc, MKRREDUCE_ALL, ((void*)0), pmkReduced);
    if (FAILED(hr))
        ERR("reducing moniker failed with error 0x%08x\n", hr);
    if (pbcNew) IBindCtx_Release(pbcNew);
    return hr;
}
