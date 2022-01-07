
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IHlink ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_StdHlink ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 int CoTaskMemFree (char*) ;
 scalar_t__ IHlink_GetTargetFrameName (int *,char**) ;
 int IHlink_Release (int *) ;
 scalar_t__ IHlink_SetTargetFrameName (int *,char const*) ;
 int IID_IHlink ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int lstrcmpW (char*,char const*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_StdHlink(void)
{
    IHlink *hlink;
    WCHAR *str;
    HRESULT hres;

    static const WCHAR testW[] = {'t','e','s','t',0};

    hres = CoCreateInstance(&CLSID_StdHlink, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IHlink, (void**)&hlink);
    ok(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);

    str = (void*)0xdeadbeef;
    hres = IHlink_GetTargetFrameName(hlink, &str);
    ok(hres == S_FALSE, "GetTargetFrameName failed: %08x\n", hres);
    ok(!str, "str = %s\n", wine_dbgstr_w(str));

    hres = IHlink_SetTargetFrameName(hlink, testW);
    ok(hres == S_OK, "SetTargetFrameName failed: %08x\n", hres);

    str = (void*)0xdeadbeef;
    hres = IHlink_GetTargetFrameName(hlink, &str);
    ok(hres == S_OK, "GetTargetFrameName failed: %08x\n", hres);
    ok(!lstrcmpW(str, testW), "str = %s\n", wine_dbgstr_w(str));
    CoTaskMemFree(str);

    hres = IHlink_SetTargetFrameName(hlink, ((void*)0));
    ok(hres == S_OK, "SetTargetFrameName failed: %08x\n", hres);

    str = (void*)0xdeadbeef;
    hres = IHlink_GetTargetFrameName(hlink, &str);
    ok(hres == S_FALSE, "GetTargetFrameName failed: %08x\n", hres);
    ok(!str, "str = %s\n", wine_dbgstr_w(str));

    IHlink_Release(hlink);
}
