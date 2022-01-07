
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IUri ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 char const* http_urlW ;
 int ok (int,char*,int *,...) ;
 int pCreateUri (char const*,int ,int ,int **) ;

__attribute__((used)) static void test_CreateUri_InvalidArgs(void) {
    HRESULT hr;
    IUri *uri = (void*) 0xdeadbeef;

    const WCHAR invalidW[] = {'i','n','v','a','l','i','d',0};
    static const WCHAR emptyW[] = {0};

    hr = pCreateUri(http_urlW, 0, 0, ((void*)0));
    ok(hr == E_INVALIDARG, "Error: CreateUri returned 0x%08x, expected 0x%08x\n", hr, E_INVALIDARG);

    hr = pCreateUri(((void*)0), 0, 0, &uri);
    ok(hr == E_INVALIDARG, "Error: CreateUri returned 0x%08x, expected 0x%08x\n", hr, E_INVALIDARG);
    ok(uri == ((void*)0), "Error: Expected the IUri to be NULL, but it was %p instead\n", uri);

    uri = (void*) 0xdeadbeef;
    hr = pCreateUri(invalidW, 0, 0, &uri);
    ok(hr == E_INVALIDARG, "Error: CreateUri returned 0x%08x, expected 0x%08x.\n", hr, E_INVALIDARG);
    ok(uri == ((void*)0), "Error: Expected the IUri to be NULL, but it was %p instead\n", uri);

    uri = (void*) 0xdeadbeef;
    hr = pCreateUri(emptyW, 0, 0, &uri);
    ok(hr == E_INVALIDARG, "Error: CreateUri returned 0x%08x, expected 0x%08x.\n", hr, E_INVALIDARG);
    ok(uri == ((void*)0), "Error: Expected the IUri to be NULL, but it was %p instead\n", uri);
}
