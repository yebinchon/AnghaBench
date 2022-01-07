
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * member_0; } ;
typedef TYPE_1__ IUnknown ;
typedef int IStillImageW ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CLASS_E_NOAGGREGATION ;
 int CLSCTX_ALL ;
 int CLSID_Sti ;
 scalar_t__ CoCreateInstance (int *,TYPE_1__*,int ,int *,void**) ;
 int FAILED (scalar_t__) ;
 int FALSE ;
 int GetModuleHandleA (int *) ;
 int IID_IStillImageW ;
 int IID_IUnknown ;
 int IStillImage_AddRef (int *) ;
 scalar_t__ IStillImage_QueryInterface (int *,int *,void**) ;
 int IStillImage_Release (int *) ;
 int IUnknown_Release (TYPE_1__*) ;
 int STI_VERSION_REAL ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int aggregator_addref_called ;
 int aggregator_vtbl ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 scalar_t__ pStiCreateInstanceW (int ,int ,int **,TYPE_1__*) ;
 int skip (char*) ;

__attribute__((used)) static void test_stillimage_aggregation(void)
{
    if (pStiCreateInstanceW)
    {
        IUnknown aggregator = { &aggregator_vtbl };
        IStillImageW *pStiW;
        IUnknown *pUnknown;
        HRESULT hr;






        hr = pStiCreateInstanceW(GetModuleHandleA(((void*)0)), STI_VERSION_REAL, &pStiW, &aggregator);
        if (SUCCEEDED(hr))
        {
            IStillImageW *pStiW2 = ((void*)0);


            aggregator_addref_called = FALSE;
            IStillImage_AddRef(pStiW);
            ok(!aggregator_addref_called, "the aggregated IStillImageW shouldn't delegate\n");
            IStillImage_Release(pStiW);







            hr = IStillImage_QueryInterface(pStiW, &IID_IStillImageW, (void**)&pStiW2);
            if (SUCCEEDED(hr))
            {
                ok(pStiW != pStiW2, "the aggregated IStillImageW and its queried IStillImageW unexpectedly match\n");

                aggregator_addref_called = FALSE;
                IStillImage_AddRef(pStiW2);
                ok(aggregator_addref_called, "the created IStillImageW's IStillImageW should delegate\n");
                IStillImage_Release(pStiW2);
                IStillImage_Release(pStiW2);
            }
            else
                ok(0, "could not query for IID_IStillImageW, hr = 0x%x\n", hr);

            IStillImage_Release(pStiW);
        }
        else
            ok(0, "could not create StillImageW, hr = 0x%X\n", hr);



        hr = CoCreateInstance(&CLSID_Sti, &aggregator, CLSCTX_ALL, &IID_IStillImageW, (void**)&pStiW);
        ok(FAILED(hr), "CoCreateInstance unexpectedly succeeded when querying for IStillImageW during aggregation\n");
        if (SUCCEEDED(hr))
            IStillImage_Release(pStiW);
        hr = CoCreateInstance(&CLSID_Sti, &aggregator, CLSCTX_ALL, &IID_IUnknown, (void**)&pUnknown);
        ok(SUCCEEDED(hr) ||
            broken(hr == CLASS_E_NOAGGREGATION),
                "CoCreateInstance unexpectedly failed when querying for IUnknown during aggregation, hr = 0x%x\n", hr);
        if (SUCCEEDED(hr))
            IUnknown_Release(pUnknown);
    }
    else
        skip("No StiCreateInstanceW function\n");
}
