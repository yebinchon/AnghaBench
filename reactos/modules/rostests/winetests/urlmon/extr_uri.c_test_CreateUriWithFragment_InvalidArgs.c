
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IUri ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int * http_urlW ;
 int * http_url_fragW ;
 int ok (int,char*,int *,...) ;
 int pCreateUriWithFragment (int *,char const*,int ,int ,int **) ;

__attribute__((used)) static void test_CreateUriWithFragment_InvalidArgs(void) {
    HRESULT hr;
    IUri *uri = (void*) 0xdeadbeef;
    const WCHAR fragmentW[] = {'#','f','r','a','g','m','e','n','t',0};

    hr = pCreateUriWithFragment(((void*)0), fragmentW, 0, 0, &uri);
    ok(hr == E_INVALIDARG, "Error: CreateUriWithFragment returned 0x%08x, expected 0x%08x.\n", hr, E_INVALIDARG);
    ok(uri == ((void*)0), "Error: Expected uri to be NULL, but was %p instead.\n", uri);

    hr = pCreateUriWithFragment(http_urlW, fragmentW, 0, 0, ((void*)0));
    ok(hr == E_INVALIDARG, "Error: CreateUriWithFragment returned 0x%08x, expected 0x%08x.\n", hr, E_INVALIDARG);


    uri = (void*) 0xdeadbeef;
    hr = pCreateUriWithFragment(http_url_fragW, fragmentW, 0, 0, &uri);
    ok(hr == E_INVALIDARG, "Error: CreateUriWithFragment returned 0x%08x, expected 0x%08x.\n", hr, E_INVALIDARG);
    ok(uri == ((void*)0), "Error: Expected uri to be NULL, but was %p instead.\n", uri);
}
