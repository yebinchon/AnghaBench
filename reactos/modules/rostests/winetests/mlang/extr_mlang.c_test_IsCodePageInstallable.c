
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IMultiLanguage2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ IMultiLanguage2_IsCodePageInstallable (int *,int) ;
 scalar_t__ IsValidCodePage (int) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int,scalar_t__) ;

__attribute__((used)) static void test_IsCodePageInstallable(IMultiLanguage2 *ml2)
{
    UINT i;
    HRESULT hr;

    for (i = 0; i < 0xffff; i++)
    {
        hr = IMultiLanguage2_IsCodePageInstallable(ml2, i);




        if (IsValidCodePage(i))
            ok(hr == S_OK ||
               broken(hr == S_FALSE) ||
               broken(hr == E_INVALIDARG),
               "code page %u is valid but not installable 0x%08x\n", i, hr);
    }
}
