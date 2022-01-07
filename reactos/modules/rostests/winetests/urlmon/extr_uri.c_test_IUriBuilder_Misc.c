
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUriBuilder ;
typedef int IUri ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int IUriBuilder_GetPort (int *,scalar_t__*,int*) ;
 int IUriBuilder_Release (int *) ;
 int IUri_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int http_urlW ;
 int ok (int,char*,int,...) ;
 int pCreateIUriBuilder (int *,int ,int ,int **) ;
 int pCreateUri (int ,int ,int ,int **) ;

__attribute__((used)) static void test_IUriBuilder_Misc(void) {
    HRESULT hr;
    IUri *uri;

    hr = pCreateUri(http_urlW, 0, 0, &uri);
    if(SUCCEEDED(hr)) {
        IUriBuilder *builder;

        hr = pCreateIUriBuilder(uri, 0, 0, &builder);
        ok(hr == S_OK, "Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
        if(SUCCEEDED(hr)) {
            BOOL has = -1;
            DWORD port = -1;

            hr = IUriBuilder_GetPort(builder, &has, &port);
            ok(hr == S_OK, "Error: IUriBuilder_GetPort returned 0x%08x, expected 0x%08x.\n", hr, S_OK);
            if(SUCCEEDED(hr)) {

                ok(has == FALSE, "Error: Expected 'has' to be FALSE, was %d instead.\n", has);

                ok(port == 80, "Error: Expected the port to be 80, but, was %d instead.\n", port);
            }
        }
        if(builder) IUriBuilder_Release(builder);
    }
    if(uri) IUri_Release(uri);
}
