
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v40 ;
typedef int buf ;
typedef char WCHAR ;
typedef int VARIANT_BOOL ;
typedef int ULONG ;
typedef int IUnknown ;
typedef int IOmNavigator ;
typedef int IHTMLWindow2 ;
typedef int IHTMLDocument2 ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int * BSTR ;


 int DIID_DispHTMLNavigator ;
 int E_INVALIDARG ;
 int IHTMLDocument2_get_parentWindow (int *,int **) ;
 int IHTMLWindow2_Release (int *) ;
 int IHTMLWindow2_get_navigator (int *,int **) ;
 int IID_IOmNavigator ;
 int IOmNavigator_Release (int *) ;
 int IOmNavigator_get_appCodeName (int *,int **) ;
 int IOmNavigator_get_appMinorVersion (int *,int **) ;
 int IOmNavigator_get_appName (int *,int **) ;
 int IOmNavigator_get_appVersion (int *,int **) ;
 int IOmNavigator_get_browserLanguage (int *,int **) ;
 int IOmNavigator_get_cpuClass (int *,int **) ;
 int IOmNavigator_get_onLine (int *,int*) ;
 int IOmNavigator_get_platform (int *,int **) ;
 int IOmNavigator_get_systemLanguage (int *,int **) ;
 int IOmNavigator_get_userAgent (int *,int **) ;
 int IOmNavigator_get_userLanguage (int *,int **) ;
 int IOmNavigator_toString (int *,int **) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int LOCALE_USER_DEFAULT ;
 int ObtainUserAgentString (int ,char*,int*) ;
 int S_OK ;
 int SysFreeString (int *) ;
 int VARIANT_TRUE ;
 scalar_t__ broken (int) ;
 int memcmp (int *,char const*,int) ;
 int ok (int,char*,...) ;
 int pGetUserDefaultUILanguage () ;
 int skip (char*) ;
 int strcmp_wa (int *,char*) ;
 int strncmp (char*,char*,int) ;
 int test_disp2 (int *,int *,int *,char*) ;
 int test_language_string (int *,int ) ;
 int test_mime_types_col (int *) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_navigator(IHTMLDocument2 *doc)
{
    IHTMLWindow2 *window;
    IOmNavigator *navigator, *navigator2;
    VARIANT_BOOL b;
    char buf[512];
    DWORD size;
    ULONG ref;
    BSTR bstr;
    HRESULT hres;

    static const WCHAR v40[] = {'4','.','0'};

    hres = IHTMLDocument2_get_parentWindow(doc, &window);
    ok(hres == S_OK, "parentWidnow failed: %08x\n", hres);

    hres = IHTMLWindow2_get_navigator(window, &navigator);
    ok(hres == S_OK, "get_navigator failed: %08x\n", hres);
    ok(navigator != ((void*)0), "navigator == NULL\n");
    test_disp2((IUnknown*)navigator, &DIID_DispHTMLNavigator, &IID_IOmNavigator, "[object]");

    hres = IHTMLWindow2_get_navigator(window, &navigator2);
    ok(hres == S_OK, "get_navigator failed: %08x\n", hres);
    ok(navigator != navigator2, "navigator2 != navihgator\n");

    IHTMLWindow2_Release(window);
    IOmNavigator_Release(navigator2);

    hres = IOmNavigator_get_appCodeName(navigator, &bstr);
    ok(hres == S_OK, "get_appCodeName failed: %08x\n", hres);
    ok(!strcmp_wa(bstr, "Mozilla"), "Unexpected appCodeName %s\n", wine_dbgstr_w(bstr));
    SysFreeString(bstr);

    bstr = ((void*)0);
    hres = IOmNavigator_get_appName(navigator, &bstr);
    ok(hres == S_OK, "get_appName failed: %08x\n", hres);
    ok(!strcmp_wa(bstr, "Microsoft Internet Explorer"), "Unexpected appCodeName %s\n", wine_dbgstr_w(bstr));
    SysFreeString(bstr);

    bstr = ((void*)0);
    hres = IOmNavigator_get_platform(navigator, &bstr);
    ok(hres == S_OK, "get_platform failed: %08x\n", hres);
    ok(!strcmp_wa(bstr, sizeof(void*) == 8 ? "Win64" : "Win32")
       || (sizeof(void*) == 8 && broken(!strcmp_wa(bstr, "Win32") )), "unexpected platform %s\n", wine_dbgstr_w(bstr));
    SysFreeString(bstr);

    bstr = ((void*)0);
    hres = IOmNavigator_get_cpuClass(navigator, &bstr);
    ok(hres == S_OK, "get_cpuClass failed: %08x\n", hres);
    ok(!strcmp_wa(bstr, sizeof(void*) == 8 ? "x64" : "x86"), "unexpected cpuClass %s\n", wine_dbgstr_w(bstr));
    SysFreeString(bstr);

    bstr = ((void*)0);
    hres = IOmNavigator_get_appVersion(navigator, &bstr);
    ok(hres == S_OK, "get_appVersion failed: %08x\n", hres);
    ok(!memcmp(bstr, v40, sizeof(v40)), "appVersion is %s\n", wine_dbgstr_w(bstr));
    SysFreeString(bstr);

    bstr = ((void*)0);
    hres = IOmNavigator_get_systemLanguage(navigator, &bstr);
    ok(hres == S_OK, "get_systemLanguage failed: %08x\n", hres);
    test_language_string(bstr, LOCALE_SYSTEM_DEFAULT);
    SysFreeString(bstr);

    if (pGetUserDefaultUILanguage)
    {
        bstr = ((void*)0);
        hres = IOmNavigator_get_browserLanguage(navigator, &bstr);
        ok(hres == S_OK, "get_browserLanguage failed: %08x\n", hres);
        test_language_string(bstr, pGetUserDefaultUILanguage());
        SysFreeString(bstr);
    }
    else
        win_skip("GetUserDefaultUILanguage not available\n");

    bstr = ((void*)0);
    hres = IOmNavigator_get_userLanguage(navigator, &bstr);
    ok(hres == S_OK, "get_userLanguage failed: %08x\n", hres);
    test_language_string(bstr, LOCALE_USER_DEFAULT);
    SysFreeString(bstr);

    hres = IOmNavigator_toString(navigator, ((void*)0));
    ok(hres == E_INVALIDARG, "toString failed: %08x\n", hres);

    bstr = ((void*)0);
    hres = IOmNavigator_toString(navigator, &bstr);
    ok(hres == S_OK, "toString failed: %08x\n", hres);
    ok(!strcmp_wa(bstr, "[object]"), "toString returned %s\n", wine_dbgstr_w(bstr));
    SysFreeString(bstr);

    b = 100;
    hres = IOmNavigator_get_onLine(navigator, &b);
    ok(hres == S_OK, "get_onLine failed: %08x\n", hres);
    ok(b == VARIANT_TRUE, "onLine = %x\n", b);

    size = sizeof(buf);
    hres = ObtainUserAgentString(0, buf, &size);
    ok(hres == S_OK, "ObtainUserAgentString failed: %08x\n", hres);

    bstr = ((void*)0);
    hres = IOmNavigator_get_userAgent(navigator, &bstr);
    ok(hres == S_OK, "get_userAgent failed: %08x\n", hres);
    ok(!strcmp_wa(bstr, buf), "userAgent returned %s, expected \"%s\"\n", wine_dbgstr_w(bstr), buf);
    SysFreeString(bstr);

    if(!strncmp(buf, "Mozilla/", 8)) {
        bstr = ((void*)0);
        hres = IOmNavigator_get_appVersion(navigator, &bstr);
        ok(hres == S_OK, "get_appVersion failed: %08x\n", hres);
        ok(!strcmp_wa(bstr, buf+8), "appVersion returned %s, expected \"%s\"\n", wine_dbgstr_w(bstr), buf+8);
        SysFreeString(bstr);
    }else {
        skip("nonstandard user agent\n");
    }

    bstr = ((void*)0);
    hres = IOmNavigator_get_appMinorVersion(navigator, &bstr);
    ok(hres == S_OK, "get_appMonorVersion failed: %08x\n", hres);
    ok(bstr != ((void*)0), "appMinorVersion returned NULL\n");
    SysFreeString(bstr);

    test_mime_types_col(navigator);

    ref = IOmNavigator_Release(navigator);
    ok(!ref, "navigator should be destroyed here\n");
}
