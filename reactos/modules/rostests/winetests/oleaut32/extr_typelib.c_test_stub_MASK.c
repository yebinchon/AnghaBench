#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_10__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  int const REGSAM ;
typedef  char OLECHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  IRpcStubBuffer ;
typedef  int /*<<< orphan*/  IPSFactoryBuffer ;
typedef  int /*<<< orphan*/  ICreateTypeLib2 ;
typedef  int /*<<< orphan*/  ICreateTypeInfo ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HREFTYPE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_2__ GUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  COINIT_APARTMENTTHREADED ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IPSFactoryBuffer ; 
 int /*<<< orphan*/  IID_ITypeInfo ; 
 int /*<<< orphan*/  IID_ITypeLib ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int const KEY_READ ; 
#define  KEY_WOW64_32KEY 129 
#define  KEY_WOW64_64KEY 128 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_WIN32 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TKIND_COCLASS ; 
 int /*<<< orphan*/  TKIND_INTERFACE ; 
 int /*<<< orphan*/  TYPEFLAG_FOLEAUTOMATION ; 
 scalar_t__ TYPE_E_REGISTRYACCESS ; 
 scalar_t__ FUNC33 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int) ; 
 scalar_t__ is_win64 ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC36 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  uk ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 
 int /*<<< orphan*/  wszStdOle2 ; 

__attribute__((used)) static void FUNC39(void)
{
    BOOL is_wow64 = FALSE;
    DWORD *sam_list;
    HRESULT hr;
    ITypeLib *stdole;
    ICreateTypeLib2 *ctl;
    ICreateTypeInfo *cti;
    ITypeLib *tl;
    ITypeInfo *unk, *ti;
    HREFTYPE href;
    char filenameA[MAX_PATH];
    WCHAR filenameW[MAX_PATH];
    int i;

    static const GUID libguid = {0x3b9ff02e,0x9675,0x4861,{0xb7,0x81,0xce,0xae,0xa4,0x78,0x2a,0xcc}};
    static const GUID interfaceguid = {0x3b9ff02f,0x9675,0x4861,{0xb7,0x81,0xce,0xae,0xa4,0x78,0x2a,0xcc}};
    static const GUID coclassguid = {0x3b9ff030,0x9675,0x4861,{0xb7,0x81,0xce,0xae,0xa4,0x78,0x2a,0xcc}};
    static OLECHAR interfaceW[] = {'i','n','t','e','r','f','a','c','e',0};
    static OLECHAR classW[] = {'c','l','a','s','s',0};
    static DWORD sam_list32[] = { 0, ~0 };
    static DWORD sam_list64[] = { 0, KEY_WOW64_32KEY, KEY_WOW64_64KEY, ~0 };

    if (&pIsWow64Process)
        FUNC37(FUNC7(), &is_wow64);
    if (is_wow64 || is_win64)
        sam_list = sam_list64;
    else
        sam_list = sam_list32;

    FUNC3(NULL, COINIT_APARTMENTTHREADED);

    hr = FUNC27(wszStdOle2, &stdole);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC25(stdole, &IID_IUnknown, &unk);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    FUNC8(".", "tlb", 0, filenameA);
    FUNC28(CP_ACP, 0, filenameA, -1, filenameW, MAX_PATH);

    hr = FUNC5(SYS_WIN32, filenameW, &ctl);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC19(ctl, &libguid);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC20(ctl, LOCALE_NEUTRAL);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC15(ctl, interfaceW, TKIND_INTERFACE, &cti);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC13(cti, &interfaceguid);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC14(cti, TYPEFLAG_FOLEAUTOMATION);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(cti, unk, &href);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC9(cti, 0, href);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC11(cti, &IID_ITypeInfo, (void**)&ti);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    FUNC12(cti);
    FUNC24(unk);
    FUNC26(stdole);

    hr = FUNC15(ctl, classW, TKIND_COCLASS, &cti);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC13(cti, &coclassguid);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(cti, ti, &href);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC9(cti, 0, href);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    FUNC24(ti);
    FUNC12(cti);

    hr = FUNC18(ctl);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    hr = FUNC16(ctl, &IID_ITypeLib, (void**)&tl);
    FUNC36(hr == S_OK, "got %08x\n", hr);

    for (i = 0; sam_list[i] != ~0; i++)
    {
        IPSFactoryBuffer *factory;
        IRpcStubBuffer *base_stub;
        REGSAM side = sam_list[i];
        CLSID clsid;
        HKEY hkey;
        LONG lr;

        hr = FUNC31(tl, filenameW, NULL);
        if (hr == TYPE_E_REGISTRYACCESS)
        {
            FUNC38("Insufficient privileges to register typelib in the registry\n");
            break;
        }
        FUNC36(hr == S_OK, "got %08x, side: %04x\n", hr, side);

        /* SYS_WIN32 typelibs should be registered only as 32-bit */
        lr = FUNC30(HKEY_CLASSES_ROOT, "TypeLib\\{3b9ff02e-9675-4861-b781-ceaea4782acc}\\0.0\\0\\win64", 0, KEY_READ | side, &hkey);
        FUNC36(lr == ERROR_FILE_NOT_FOUND, "got wrong return code: %u, side: %04x\n", lr, side);

        lr = FUNC30(HKEY_CLASSES_ROOT, "TypeLib\\{3b9ff02e-9675-4861-b781-ceaea4782acc}\\0.0\\0\\win32", 0, KEY_READ | side, &hkey);
        FUNC36(lr == ERROR_SUCCESS, "got wrong return code: %u, side: %04x\n", lr, side);
        FUNC29(hkey);

        /* Simulate pre-win7 installers that create interface key on one side */
        if (side != 0)
        {
            WCHAR guidW[40];
            REGSAM opposite = side ^ (KEY_WOW64_64KEY | KEY_WOW64_32KEY);

            FUNC32(&interfaceguid, guidW, FUNC0(guidW));

            /* Delete the opposite interface key */
            lr = FUNC30(HKEY_CLASSES_ROOT, "Interface", 0, KEY_READ | opposite, &hkey);
            FUNC36(lr == ERROR_SUCCESS, "got wrong return code: %u, side: %04x\n", lr, side);
            lr = FUNC35(hkey, guidW, opposite);
            FUNC36(lr == ERROR_SUCCESS, "got wrong return code: %u, side: %04x\n", lr, side);
            FUNC29(hkey);

            /* Is our side interface key affected by above operation? */
            lr = FUNC30(HKEY_CLASSES_ROOT, "Interface\\{3b9ff02f-9675-4861-b781-ceaea4782acc}", 0, KEY_READ | side, &hkey);
            FUNC36(lr == ERROR_SUCCESS || FUNC34(lr == ERROR_FILE_NOT_FOUND), "got wrong return code: %u, side: %04x\n", lr, side);
            if (lr == ERROR_FILE_NOT_FOUND)
            {
                /* win2k3, vista, 2008 */
                FUNC38("Registry reflection is enabled on this platform.\n");
                goto next;
            }
            FUNC29(hkey);

            /* Opposite side typelib key still exists */
            lr = FUNC30(HKEY_CLASSES_ROOT, "TypeLib\\{3b9ff02e-9675-4861-b781-ceaea4782acc}\\0.0\\0\\win32", 0, KEY_READ | opposite, &hkey);
            FUNC36(lr == ERROR_SUCCESS, "got wrong return code: %u, side: %04x\n", lr, side);
            FUNC29(hkey);
        }

        hr = FUNC2(&interfaceguid, &clsid);
        FUNC36(hr == S_OK, "got: %x, side: %04x\n", hr, side);

        hr = FUNC1(&clsid, CLSCTX_INPROC_SERVER, NULL,
                              &IID_IPSFactoryBuffer, (void **)&factory);
        FUNC36(hr == S_OK, "got: %x, side: %04x\n", hr, side);

        hr = FUNC21(factory, &interfaceguid, &uk, &base_stub);
        FUNC36(hr == S_OK, "got: %x, side: %04x\n", hr, side);
        FUNC23(base_stub);

        FUNC22(factory);
    next:
        hr = FUNC33(&libguid, 0, 0, 0, SYS_WIN32);
        FUNC36(hr == S_OK, "got: %x, side: %04x\n", hr, side);
    }

    FUNC26(tl);
    FUNC36(0 == FUNC17(ctl), "Typelib still has references\n");

    FUNC6(filenameW);

    FUNC4();
}