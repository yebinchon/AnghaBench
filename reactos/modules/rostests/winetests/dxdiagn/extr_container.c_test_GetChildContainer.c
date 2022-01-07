
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef void IDxDiagContainer ;
typedef int HRESULT ;


 int ARRAY_SIZE (int *) ;
 int E_INVALIDARG ;
 scalar_t__ FAILED (int ) ;
 int IDxDiagContainer_EnumChildContainerNames (void*,int ,int *,int ) ;
 int IDxDiagContainer_GetChildContainer (void*,int *,void**) ;
 int IDxDiagContainer_Release (void*) ;
 int IDxDiagProvider_Release (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int create_root_IDxDiagContainer () ;
 int ok (int,char*,void*,...) ;
 void* pddc ;
 int pddp ;
 int skip (char*) ;

__attribute__((used)) static void test_GetChildContainer(void)
{
    HRESULT hr;
    WCHAR container[256] = {0};
    IDxDiagContainer *child;

    if (!create_root_IDxDiagContainer())
    {
        skip("Unable to create the root IDxDiagContainer\n");
        return;
    }


    hr = IDxDiagContainer_GetChildContainer(pddc, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\n", hr);

    child = (void*)0xdeadbeef;
    hr = IDxDiagContainer_GetChildContainer(pddc, ((void*)0), &child);
    ok(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\n", hr);
    ok(child == (void*)0xdeadbeef, "Expected output pointer to be unchanged, got %p\n", child);

    hr = IDxDiagContainer_GetChildContainer(pddc, container, ((void*)0));
    ok(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\n", hr);

    child = (void*)0xdeadbeef;
    hr = IDxDiagContainer_GetChildContainer(pddc, container, &child);
    ok(hr == E_INVALIDARG,
       "Expected IDxDiagContainer::GetChildContainer to return E_INVALIDARG, got 0x%08x\n", hr);
    ok(child == ((void*)0), "Expected output pointer to be NULL, got %p\n", child);


    hr = IDxDiagContainer_EnumChildContainerNames(pddc, 0, container, ARRAY_SIZE(container));
    ok(hr == S_OK,
       "Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got 0x%08x\n", hr);
    if (FAILED(hr))
    {
        skip("IDxDiagContainer::EnumChildContainerNames failed\n");
        goto cleanup;
    }

    child = (void*)0xdeadbeef;
    hr = IDxDiagContainer_GetChildContainer(pddc, container, &child);
    ok(hr == S_OK,
       "Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\n", hr);
    ok(child != ((void*)0) && child != (void*)0xdeadbeef, "Expected a valid output pointer, got %p\n", child);

    if (SUCCEEDED(hr))
    {
        IDxDiagContainer *ptr;



        hr = IDxDiagContainer_GetChildContainer(pddc, container, &ptr);
        ok(hr == S_OK,
           "Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\n", hr);
        if (SUCCEEDED(hr))
            ok(ptr != child, "Expected the two pointers (%p vs. %p) to be unequal\n", child, ptr);

        IDxDiagContainer_Release(ptr);
        IDxDiagContainer_Release(child);
    }

cleanup:
    IDxDiagContainer_Release(pddc);
    IDxDiagProvider_Release(pddp);
}
