
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransformFilterFuncTable ;
struct TYPE_7__ {int IBaseFilter_iface; } ;
struct TYPE_8__ {TYPE_1__ filter; } ;
typedef TYPE_2__ TransformFilter ;
typedef int LONG ;
typedef int IBaseFilterVtbl ;
typedef int IBaseFilter ;
typedef int HRESULT ;
typedef int CLSID ;


 TYPE_2__* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (TYPE_2__*) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TransformFilter_Init (int const*,int const*,int const*,TYPE_2__*) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int assert (int) ;

HRESULT TransformFilter_Construct(const IBaseFilterVtbl *pVtbl, LONG filter_size, const CLSID* pClsid, const TransformFilterFuncTable* pFuncsTable, IBaseFilter ** ppTransformFilter)
{
    TransformFilter* pTf;

    *ppTransformFilter = ((void*)0);

    assert(filter_size >= sizeof(TransformFilter));

    pTf = CoTaskMemAlloc(filter_size);

    if (!pTf)
        return E_OUTOFMEMORY;

    ZeroMemory(pTf, filter_size);

    if (SUCCEEDED(TransformFilter_Init(pVtbl, pClsid, pFuncsTable, pTf)))
    {
        *ppTransformFilter = &pTf->filter.IBaseFilter_iface;
        return S_OK;
    }

    CoTaskMemFree(pTf);
    return E_FAIL;
}
