
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IUnknown ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateStdDispatch (int *,int *,int *,int **) ;
 scalar_t__ E_INVALIDARG ;
 int IID_IUnknown ;
 int ITypeInfo_Release (int *) ;
 scalar_t__ ITypeLib_GetTypeInfoOfGuid (int *,int *,int **) ;
 int ITypeLib_Release (int *) ;
 int IUnknown_Release (int *) ;
 scalar_t__ LoadTypeLib (char const*,int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_unk ;

__attribute__((used)) static void test_CreateStdDispatch(void)
{
    static const WCHAR stdole2W[] = {'s','t','d','o','l','e','2','.','t','l','b',0};
    ITypeLib *tl;
    ITypeInfo *ti;
    IUnknown *unk;
    HRESULT hr;

    hr = CreateStdDispatch(((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = CreateStdDispatch(((void*)0), ((void*)0), ((void*)0), &unk);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = LoadTypeLib(stdole2W, &tl);
    ok(hr == S_OK, "got %08x\n", hr);
    hr = ITypeLib_GetTypeInfoOfGuid(tl, &IID_IUnknown, &ti);
    ok(hr == S_OK, "got %08x\n", hr);
    ITypeLib_Release(tl);

    hr = CreateStdDispatch(((void*)0), &test_unk, ((void*)0), &unk);
    ok(hr == E_INVALIDARG, "got %08x\n", hr);

    hr = CreateStdDispatch(((void*)0), ((void*)0), ti, &unk);
    ok(hr == E_INVALIDARG, "got %08x\n", hr);

    hr = CreateStdDispatch(((void*)0), &test_unk, ti, &unk);
    ok(hr == S_OK, "got %08x\n", hr);
    IUnknown_Release(unk);

    ITypeInfo_Release(ti);
}
