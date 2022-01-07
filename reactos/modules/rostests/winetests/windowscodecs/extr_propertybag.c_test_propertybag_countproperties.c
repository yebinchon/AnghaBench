
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IPropertyBag2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IPropertyBag2_CountProperties (int *,scalar_t__*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_propertybag_countproperties(IPropertyBag2 *property, ULONG expected_count)
{
    ULONG count = (ULONG)-1;
    HRESULT hr;

    hr = IPropertyBag2_CountProperties(property, ((void*)0));
    ok(hr == E_INVALIDARG, "CountProperties returned unexpected result, hr=%x\n", hr);

    hr = IPropertyBag2_CountProperties(property, &count);
    ok(hr == S_OK, "CountProperties failed, hr=%x\n", hr);

    if (FAILED(hr))
        return;

    ok(count == expected_count, "CountProperties returned invalid value, count=%i\n", count);
}
