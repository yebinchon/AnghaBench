
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ IDxDiagContainer_GetNumberOfProps (int ,scalar_t__*) ;
 int IDxDiagContainer_Release (int ) ;
 int IDxDiagProvider_Release (int ) ;
 scalar_t__ S_OK ;
 int create_root_IDxDiagContainer () ;
 int ok (int,char*,...) ;
 int pddc ;
 int pddp ;
 int skip (char*) ;

__attribute__((used)) static void test_GetNumberOfProps(void)
{
    HRESULT hr;
    DWORD count;

    if (!create_root_IDxDiagContainer())
    {
        skip("Unable to create the root IDxDiagContainer\n");
        return;
    }

    hr = IDxDiagContainer_GetNumberOfProps(pddc, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected IDxDiagContainer::GetNumberOfProps to return E_INVALIDARG, got 0x%08x\n", hr);

    hr = IDxDiagContainer_GetNumberOfProps(pddc, &count);
    ok(hr == S_OK, "Expected IDxDiagContainer::GetNumberOfProps to return S_OK, got 0x%08x\n", hr);
    if (hr == S_OK)
        ok(count == 0, "Expected the number of properties for the root container to be zero\n");

    IDxDiagContainer_Release(pddc);
    IDxDiagProvider_Release(pddp);
}
