
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pDllGetVersion (int *) ;

__attribute__((used)) static void test_DllGetVersion(void)
{
    HRESULT hr;

    hr = pDllGetVersion(((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
}
