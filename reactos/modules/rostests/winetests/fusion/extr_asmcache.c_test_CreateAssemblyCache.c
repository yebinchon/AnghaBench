
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IAssemblyCache ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 int IAssemblyCache_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCreateAssemblyCache (int **,int) ;

__attribute__((used)) static void test_CreateAssemblyCache(void)
{
    IAssemblyCache *cache;
    HRESULT hr;


    hr = pCreateAssemblyCache(((void*)0), 0);
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);


    hr = pCreateAssemblyCache(&cache, 42);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    IAssemblyCache_Release(cache);
}
