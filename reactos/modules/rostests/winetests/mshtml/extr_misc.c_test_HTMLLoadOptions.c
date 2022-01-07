
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int buf ;
typedef int IHtmlLoadOptions ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_HTMLLoadOptions ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ E_FAIL ;
 scalar_t__ FAILED (scalar_t__) ;
 int HTMLLOADOPTION_CODEPAGE ;
 scalar_t__ HTMLLOADOPTION_FRAMELOAD ;
 scalar_t__ IHtmlLoadOptions_QueryOption (int *,int,int*,scalar_t__*) ;
 int IHtmlLoadOptions_Release (int *) ;
 scalar_t__ IHtmlLoadOptions_SetOption (int *,int,...) ;
 int IID_IHtmlLoadOptions ;
 scalar_t__ S_OK ;
 int memset (int*,int,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_HTMLLoadOptions(void)
{
    IHtmlLoadOptions *loadopts;
    BYTE buf[100];
    DWORD size, i, data = 0xdeadbeef;
    HRESULT hres;

    hres = CoCreateInstance(&CLSID_HTMLLoadOptions, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IHtmlLoadOptions, (void**)&loadopts);
    ok(hres == S_OK, "creating HTMLLoadOptions failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    for(i=0; i <= HTMLLOADOPTION_FRAMELOAD+3; i++) {
        size = 0xdeadbeef;
        memset(buf, 0xdd, sizeof(buf));
        hres = IHtmlLoadOptions_QueryOption(loadopts, i, ((void*)0), &size);
        ok(hres == S_OK, "QueryOption failed: %08x\n", hres);
        ok(size == 0, "size = %d\n", size);
        ok(buf[0] == 0xdd, "buf changed\n");
    }

    size = 0xdeadbeef;
    hres = IHtmlLoadOptions_QueryOption(loadopts, HTMLLOADOPTION_CODEPAGE, ((void*)0), &size);
    ok(hres == S_OK, "QueryOption failed: %08x\n", hres);
    ok(size == 0, "size = %d\n", size);

    hres = IHtmlLoadOptions_SetOption(loadopts, HTMLLOADOPTION_CODEPAGE, &data, sizeof(data));
    ok(hres == S_OK, "SetOption failed: %08x\n", hres);

    size = sizeof(data);
    memset(buf, 0xdd, sizeof(buf));
    hres = IHtmlLoadOptions_QueryOption(loadopts, HTMLLOADOPTION_CODEPAGE, buf, &size);
    ok(hres == S_OK, "QueryOption failed: %08x\n", hres);
    ok(size == sizeof(data), "size = %d\n", size);
    ok(*(DWORD*)buf == data, "unexpected buf\n");

    size = sizeof(data)-1;
    memset(buf, 0xdd, sizeof(buf));
    hres = IHtmlLoadOptions_QueryOption(loadopts, HTMLLOADOPTION_CODEPAGE, buf, &size);
    ok(hres == E_FAIL, "QueryOption failed: %08x\n", hres);
    ok(size == sizeof(data) || !size, "size = %d\n", size);
    ok(buf[0] == 0xdd, "buf changed\n");

    data = 100;
    hres = IHtmlLoadOptions_SetOption(loadopts, HTMLLOADOPTION_CODEPAGE, &data, 0);
    ok(hres == S_OK, "SetOption failed: %08x\n", hres);

    size = 0xdeadbeef;
    memset(buf, 0xdd, sizeof(buf));
    hres = IHtmlLoadOptions_QueryOption(loadopts, HTMLLOADOPTION_CODEPAGE, buf, &size);
    ok(hres == S_OK, "QueryOption failed: %08x\n", hres);
    ok(size == 0, "size = %d\n", size);
    ok(buf[0] == 0xdd, "buf changed\n");

    hres = IHtmlLoadOptions_SetOption(loadopts, HTMLLOADOPTION_CODEPAGE, ((void*)0), 0);
    ok(hres == S_OK, "SetOption failed: %08x\n", hres);

    hres = IHtmlLoadOptions_SetOption(loadopts, 1000, &data, sizeof(data));
    ok(hres == S_OK, "SetOption failed: %08x\n", hres);

    size = sizeof(data);
    memset(buf, 0xdd, sizeof(buf));
    hres = IHtmlLoadOptions_QueryOption(loadopts, 1000, buf, &size);
    ok(hres == S_OK, "QueryOption failed: %08x\n", hres);
    ok(size == sizeof(data), "size = %d\n", size);
    ok(*(DWORD*)buf == data, "unexpected buf\n");

    hres = IHtmlLoadOptions_SetOption(loadopts, 1000, buf, sizeof(buf));
    ok(hres == S_OK, "SetOption failed: %08x\n", hres);

    size = 0xdeadbeef;
    hres = IHtmlLoadOptions_QueryOption(loadopts, 1000, buf, &size);
    ok(hres == S_OK, "QueryOption failed: %08x\n", hres);
    ok(size == sizeof(buf), "size = %d\n", size);

    IHtmlLoadOptions_Release(loadopts);
}
