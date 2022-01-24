#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  v40 ;
typedef  int /*<<< orphan*/  buf ;
typedef  char WCHAR ;
typedef  int VARIANT_BOOL ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IOmNavigator ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DIID_DispHTMLNavigator ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IOmNavigator ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int VARIANT_TRUE ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC30(IHTMLDocument2 *doc)
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

    hres = FUNC0(doc, &window);
    FUNC20(hres == S_OK, "parentWidnow failed: %08x\n", hres);

    hres = FUNC2(window, &navigator);
    FUNC20(hres == S_OK, "get_navigator failed: %08x\n", hres);
    FUNC20(navigator != NULL, "navigator == NULL\n");
    FUNC25((IUnknown*)navigator, &DIID_DispHTMLNavigator, &IID_IOmNavigator, "[object]");

    hres = FUNC2(window, &navigator2);
    FUNC20(hres == S_OK, "get_navigator failed: %08x\n", hres);
    FUNC20(navigator != navigator2, "navigator2 != navihgator\n");

    FUNC1(window);
    FUNC3(navigator2);

    hres = FUNC4(navigator, &bstr);
    FUNC20(hres == S_OK, "get_appCodeName failed: %08x\n", hres);
    FUNC20(!FUNC23(bstr, "Mozilla"), "Unexpected appCodeName %s\n", FUNC29(bstr));
    FUNC17(bstr);

    bstr = NULL;
    hres = FUNC6(navigator, &bstr);
    FUNC20(hres == S_OK, "get_appName failed: %08x\n", hres);
    FUNC20(!FUNC23(bstr, "Microsoft Internet Explorer"), "Unexpected appCodeName %s\n", FUNC29(bstr));
    FUNC17(bstr);

    bstr = NULL;
    hres = FUNC11(navigator, &bstr);
    FUNC20(hres == S_OK, "get_platform failed: %08x\n", hres);
    FUNC20(!FUNC23(bstr, sizeof(void*) == 8 ? "Win64" : "Win32")
       || (sizeof(void*) == 8 && FUNC18(!FUNC23(bstr, "Win32") /* IE6 */)), "unexpected platform %s\n", FUNC29(bstr));
    FUNC17(bstr);

    bstr = NULL;
    hres = FUNC9(navigator, &bstr);
    FUNC20(hres == S_OK, "get_cpuClass failed: %08x\n", hres);
    FUNC20(!FUNC23(bstr, sizeof(void*) == 8 ? "x64" : "x86"), "unexpected cpuClass %s\n", FUNC29(bstr));
    FUNC17(bstr);

    bstr = NULL;
    hres = FUNC7(navigator, &bstr);
    FUNC20(hres == S_OK, "get_appVersion failed: %08x\n", hres);
    FUNC20(!FUNC19(bstr, v40, sizeof(v40)), "appVersion is %s\n", FUNC29(bstr));
    FUNC17(bstr);

    bstr = NULL;
    hres = FUNC12(navigator, &bstr);
    FUNC20(hres == S_OK, "get_systemLanguage failed: %08x\n", hres);
    FUNC26(bstr, LOCALE_SYSTEM_DEFAULT);
    FUNC17(bstr);

    if (&pGetUserDefaultUILanguage)
    {
        bstr = NULL;
        hres = FUNC8(navigator, &bstr);
        FUNC20(hres == S_OK, "get_browserLanguage failed: %08x\n", hres);
        FUNC26(bstr, FUNC21());
        FUNC17(bstr);
    }
    else
        FUNC28("GetUserDefaultUILanguage not available\n");

    bstr = NULL;
    hres = FUNC14(navigator, &bstr);
    FUNC20(hres == S_OK, "get_userLanguage failed: %08x\n", hres);
    FUNC26(bstr, LOCALE_USER_DEFAULT);
    FUNC17(bstr);

    hres = FUNC15(navigator, NULL);
    FUNC20(hres == E_INVALIDARG, "toString failed: %08x\n", hres);

    bstr = NULL;
    hres = FUNC15(navigator, &bstr);
    FUNC20(hres == S_OK, "toString failed: %08x\n", hres);
    FUNC20(!FUNC23(bstr, "[object]"), "toString returned %s\n", FUNC29(bstr));
    FUNC17(bstr);

    b = 100;
    hres = FUNC10(navigator, &b);
    FUNC20(hres == S_OK, "get_onLine failed: %08x\n", hres);
    FUNC20(b == VARIANT_TRUE, "onLine = %x\n", b);

    size = sizeof(buf);
    hres = FUNC16(0, buf, &size);
    FUNC20(hres == S_OK, "ObtainUserAgentString failed: %08x\n", hres);

    bstr = NULL;
    hres = FUNC13(navigator, &bstr);
    FUNC20(hres == S_OK, "get_userAgent failed: %08x\n", hres);
    FUNC20(!FUNC23(bstr, buf), "userAgent returned %s, expected \"%s\"\n", FUNC29(bstr), buf);
    FUNC17(bstr);

    if(!FUNC24(buf, "Mozilla/", 8)) {
        bstr = NULL;
        hres = FUNC7(navigator, &bstr);
        FUNC20(hres == S_OK, "get_appVersion failed: %08x\n", hres);
        FUNC20(!FUNC23(bstr, buf+8), "appVersion returned %s, expected \"%s\"\n", FUNC29(bstr), buf+8);
        FUNC17(bstr);
    }else {
        FUNC22("nonstandard user agent\n");
    }

    bstr = NULL;
    hres = FUNC5(navigator, &bstr);
    FUNC20(hres == S_OK, "get_appMonorVersion failed: %08x\n", hres);
    FUNC20(bstr != NULL, "appMinorVersion returned NULL\n");
    FUNC17(bstr);

    FUNC27(navigator);

    ref = FUNC3(navigator);
    FUNC20(!ref, "navigator should be destroyed here\n");
}