
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCWSTR ;
typedef int IMoniker ;
typedef int * HRESULT ;


 int * CreateURLMoniker (int *,int *,int **) ;
 int * E_INVALIDARG ;
 int IMoniker_Release (int *) ;
 int * MK_E_SYNTAX ;
 int * S_OK ;
 scalar_t__ broken (int) ;
 int * emptyW ;
 int ok (int,char*,int *) ;

__attribute__((used)) static void test_CreateURLMoniker(LPCWSTR url1, LPCWSTR url2)
{
    HRESULT hr;
    IMoniker *mon1 = ((void*)0);
    IMoniker *mon2 = ((void*)0);

    hr = CreateURLMoniker(((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG,
       "Expected CreateURLMoniker to return E_INVALIDARG, got 0x%08x\n", hr);

    mon1 = (IMoniker *)0xdeadbeef;
    hr = CreateURLMoniker(((void*)0), ((void*)0), &mon1);
    ok(hr == E_INVALIDARG,
       "Expected CreateURLMoniker to return E_INVALIDARG, got 0x%08x\n", hr);
    ok(mon1 == ((void*)0), "Expected the output pointer to be NULL, got %p\n", mon1);

    hr = CreateURLMoniker(((void*)0), emptyW, ((void*)0));
    ok(hr == E_INVALIDARG,
       "Expected CreateURLMoniker to return E_INVALIDARG, got 0x%08x\n", hr);

    hr = CreateURLMoniker(((void*)0), emptyW, &mon1);
    ok(hr == S_OK ||
       broken(hr == MK_E_SYNTAX),
       "Expected CreateURLMoniker to return S_OK, got 0x%08x\n", hr);
    if(mon1) IMoniker_Release(mon1);

    hr = CreateURLMoniker(((void*)0), url1, &mon1);
    ok(hr == S_OK, "failed to create moniker: 0x%08x\n", hr);
    if(hr == S_OK) {
        hr = CreateURLMoniker(mon1, url2, &mon2);
        ok(hr == S_OK, "failed to create moniker: 0x%08x\n", hr);
    }
    if(mon1) IMoniker_Release(mon1);
    if(mon2) IMoniker_Release(mon2);
}
