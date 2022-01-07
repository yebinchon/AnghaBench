
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IAssemblyCacheItem ;
typedef int IAssemblyCache ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 int IAssemblyCacheItem_Release (int *) ;
 scalar_t__ IAssemblyCache_CreateAssemblyCacheItem (int *,int,void*,int **,char const*) ;
 int IAssemblyCache_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCreateAssemblyCache (int **,int ) ;

__attribute__((used)) static void test_CreateAssemblyCacheItem(void)
{
    IAssemblyCache *cache;
    IAssemblyCacheItem *item;
    HRESULT hr;

    static const WCHAR wine[] = {'w','i','n','e',0};

    hr = pCreateAssemblyCache(&cache, 0);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = IAssemblyCache_CreateAssemblyCacheItem(cache, 0, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    hr = IAssemblyCache_CreateAssemblyCacheItem(cache, 0, ((void*)0), &item, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    IAssemblyCacheItem_Release(item);

    hr = IAssemblyCache_CreateAssemblyCacheItem(cache, 0, ((void*)0), &item, wine);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    IAssemblyCacheItem_Release(item);

    hr = IAssemblyCache_CreateAssemblyCacheItem(cache, 1, (void *)0xdeadbeef, &item, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    IAssemblyCacheItem_Release(item);

    hr = IAssemblyCache_CreateAssemblyCacheItem(cache, 1, ((void*)0), &item, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    IAssemblyCacheItem_Release(item);

    hr = IAssemblyCache_CreateAssemblyCacheItem(cache, 0, (void *)0xdeadbeef, &item, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    IAssemblyCacheItem_Release(item);

    IAssemblyCache_Release(cache);
}
