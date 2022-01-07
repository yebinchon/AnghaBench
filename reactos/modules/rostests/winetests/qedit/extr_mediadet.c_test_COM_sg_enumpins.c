
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IUnknown ;
typedef int IEnumPins ;
typedef int IBaseFilter ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_SampleGrabber ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IBaseFilter_EnumPins (int *,int **) ;
 int IBaseFilter_Release (int *) ;
 int IEnumPins_AddRef (int *) ;
 int IEnumPins_QueryInterface (int *,int *,void**) ;
 scalar_t__ IEnumPins_Release (int *) ;
 int IID_IBaseFilter ;
 int IID_IEnumPins ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_COM_sg_enumpins(void)
{
    IBaseFilter *bf;
    IEnumPins *pins, *pins2;
    IUnknown *unk;
    ULONG refcount;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_SampleGrabber, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IBaseFilter,
            (void**)&bf);
    ok(hr == S_OK, "SampleGrabber create failed: %08x, expected S_OK\n", hr);
    hr = IBaseFilter_EnumPins(bf, &pins);
    ok(hr == S_OK, "EnumPins create failed: %08x, expected S_OK\n", hr);


    refcount = IEnumPins_AddRef(pins);
    ok(refcount == 2, "refcount == %u, expected 2\n", refcount);
    hr = IEnumPins_QueryInterface(pins, &IID_IEnumPins, (void**)&pins2);
    ok(hr == S_OK, "QueryInterface for IID_IEnumPins failed: %08x\n", hr);
    ok(pins == pins2, "QueryInterface for self failed (%p != %p)\n", pins, pins2);
    IEnumPins_Release(pins2);

    hr = IEnumPins_QueryInterface(pins, &IID_IUnknown, (void**)&unk);
    ok(hr == S_OK, "QueryInterface for IID_IUnknown failed: %08x\n", hr);
    refcount = IUnknown_AddRef(unk);
    ok(refcount == 4, "refcount == %u, expected 4\n", refcount);
    refcount = IUnknown_Release(unk);

    while (IEnumPins_Release(pins));
    IBaseFilter_Release(bf);
}
