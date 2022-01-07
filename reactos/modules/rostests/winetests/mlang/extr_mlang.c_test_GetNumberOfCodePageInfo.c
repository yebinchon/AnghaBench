
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IMultiLanguage2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ IMultiLanguage2_GetNumberOfCodePageInfo (int *,int*) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void test_GetNumberOfCodePageInfo(IMultiLanguage2 *iML2)
{
    HRESULT hr;
    UINT value;

    value = 0xdeadbeef;
    hr = IMultiLanguage2_GetNumberOfCodePageInfo(iML2, &value);
    ok( (hr == S_OK) && value,
        "got 0x%x with %d (expected S_OK with '!= 0')\n", hr, value);

    hr = IMultiLanguage2_GetNumberOfCodePageInfo(iML2, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);

}
