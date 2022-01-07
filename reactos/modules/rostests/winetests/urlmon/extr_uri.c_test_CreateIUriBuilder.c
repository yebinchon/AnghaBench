
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IUriBuilder ;
typedef int IUri ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_POINTER ;
 int IUriBuilder_Release (int *) ;
 int IUri_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ get_refcnt (int *) ;
 int http_urlW ;
 int ok (int,char*,...) ;
 scalar_t__ pCreateIUriBuilder (int *,int ,int ,int **) ;
 scalar_t__ pCreateUri (int ,int ,int ,int **) ;

__attribute__((used)) static void test_CreateIUriBuilder(void) {
    HRESULT hr;
    IUriBuilder *builder = ((void*)0);
    IUri *uri;

    hr = pCreateIUriBuilder(((void*)0), 0, 0, ((void*)0));
    ok(hr == E_POINTER, "Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x\n",
        hr, E_POINTER);


    hr = pCreateUri(http_urlW, 0, 0, &uri);
    ok(hr == S_OK, "Error: CreateUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
    if(SUCCEEDED(hr)) {
        ULONG cur_count, orig_count;

        orig_count = get_refcnt(uri);
        hr = pCreateIUriBuilder(uri, 0, 0, &builder);
        ok(hr == S_OK, "Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
        ok(builder != ((void*)0), "Error: Expecting builder not to be NULL\n");

        cur_count = get_refcnt(uri);
        ok(cur_count == orig_count+1, "Error: Expected the ref count to be %u, but was %u instead.\n", orig_count+1, cur_count);

        if(builder) IUriBuilder_Release(builder);
        cur_count = get_refcnt(uri);
        ok(cur_count == orig_count, "Error: Expected the ref count to be %u, but was %u instead.\n", orig_count, cur_count);
    }
    if(uri) IUri_Release(uri);
}
