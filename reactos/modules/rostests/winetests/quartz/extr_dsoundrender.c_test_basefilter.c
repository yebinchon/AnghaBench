
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* ULONG ;
typedef void IPin ;
typedef int IEnumPins ;
typedef int IBaseFilter ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_POINTER ;
 scalar_t__ IBaseFilter_EnumPins (int *,int **) ;
 int IBaseFilter_Release (int *) ;
 scalar_t__ IEnumPins_Next (int *,int,void**,void**) ;
 void* IEnumPins_Release (int *) ;
 int IID_IBaseFilter ;
 int IPin_Release (void*) ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,void*) ;
 int pDSRender ;
 int skip (char*) ;
 int test_pin (void*) ;

__attribute__((used)) static void test_basefilter(void)
{
    IEnumPins *pin_enum = ((void*)0);
    IBaseFilter *base = ((void*)0);
    IPin *pins[2];
    ULONG ref;
    HRESULT hr;

    IUnknown_QueryInterface(pDSRender, &IID_IBaseFilter, (void **)&base);
    if (base == ((void*)0))
    {

        skip("No IBaseFilter\n");
        return;
    }

    hr = IBaseFilter_EnumPins(base, ((void*)0));
    ok(hr == E_POINTER, "hr = %08x and not E_POINTER\n", hr);

    hr= IBaseFilter_EnumPins(base, &pin_enum);
    ok(hr == S_OK, "hr = %08x and not S_OK\n", hr);

    hr = IEnumPins_Next(pin_enum, 1, ((void*)0), ((void*)0));
    ok(hr == E_POINTER, "hr = %08x and not E_POINTER\n", hr);

    hr = IEnumPins_Next(pin_enum, 2, pins, ((void*)0));
    ok(hr == E_INVALIDARG, "hr = %08x and not E_INVALIDARG\n", hr);

    pins[0] = (void *)0xdead;
    pins[1] = (void *)0xdeed;

    hr = IEnumPins_Next(pin_enum, 2, pins, &ref);
    ok(hr == S_FALSE, "hr = %08x instead of S_FALSE\n", hr);
    ok(pins[0] != (void *)0xdead && pins[0] != ((void*)0), "pins[0] = %p\n", pins[0]);
    if (pins[0] != (void *)0xdead && pins[0] != ((void*)0))
    {
        test_pin(pins[0]);
        IPin_Release(pins[0]);
    }

    ok(pins[1] == (void *)0xdeed, "pins[1] = %p\n", pins[1]);

    ref = IEnumPins_Release(pin_enum);
    ok(ref == 0, "ref is %u and not 0!\n", ref);

    IBaseFilter_Release(base);
}
