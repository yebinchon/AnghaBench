
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_10__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef int const REGSAM ;
typedef char OLECHAR ;
typedef scalar_t__ LONG ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int IRpcStubBuffer ;
typedef int IPSFactoryBuffer ;
typedef int ICreateTypeLib2 ;
typedef int ICreateTypeInfo ;
typedef scalar_t__ HRESULT ;
typedef int HREFTYPE ;
typedef int HKEY ;
typedef TYPE_2__ GUID ;
typedef int DWORD ;
typedef int CLSID ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 int CLSCTX_INPROC_SERVER ;
 int COINIT_APARTMENTTHREADED ;
 int CP_ACP ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 scalar_t__ CoGetPSClsid (TYPE_2__ const*,int *) ;
 int CoInitializeEx (int *,int ) ;
 int CoUninitialize () ;
 scalar_t__ CreateTypeLib2 (int ,int *,int **) ;
 int DeleteFileW (int *) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int HKEY_CLASSES_ROOT ;
 scalar_t__ ICreateTypeInfo_AddImplType (int *,int ,int ) ;
 scalar_t__ ICreateTypeInfo_AddRefTypeInfo (int *,int *,int *) ;
 scalar_t__ ICreateTypeInfo_QueryInterface (int *,int *,void**) ;
 int ICreateTypeInfo_Release (int *) ;
 scalar_t__ ICreateTypeInfo_SetGuid (int *,TYPE_2__ const*) ;
 scalar_t__ ICreateTypeInfo_SetTypeFlags (int *,int ) ;
 scalar_t__ ICreateTypeLib2_CreateTypeInfo (int *,char*,int ,int **) ;
 scalar_t__ ICreateTypeLib2_QueryInterface (int *,int *,void**) ;
 scalar_t__ ICreateTypeLib2_Release (int *) ;
 scalar_t__ ICreateTypeLib2_SaveAllChanges (int *) ;
 scalar_t__ ICreateTypeLib2_SetGuid (int *,TYPE_2__ const*) ;
 scalar_t__ ICreateTypeLib2_SetLcid (int *,int ) ;
 int IID_IPSFactoryBuffer ;
 int IID_ITypeInfo ;
 int IID_ITypeLib ;
 int IID_IUnknown ;
 scalar_t__ IPSFactoryBuffer_CreateStub (int *,TYPE_2__ const*,int *,int **) ;
 int IPSFactoryBuffer_Release (int *) ;
 int IRpcStubBuffer_Release (int *) ;
 int ITypeInfo_Release (int *) ;
 scalar_t__ ITypeLib_GetTypeInfoOfGuid (int *,int *,int **) ;
 int ITypeLib_Release (int *) ;
 int const KEY_READ ;


 int LOCALE_NEUTRAL ;
 scalar_t__ LoadTypeLib (int ,int **) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int const,int *) ;
 scalar_t__ RegisterTypeLib (int *,int *,int *) ;
 int SYS_WIN32 ;
 scalar_t__ S_OK ;
 int StringFromGUID2 (TYPE_2__ const*,int *,int ) ;
 int TKIND_COCLASS ;
 int TKIND_INTERFACE ;
 int TYPEFLAG_FOLEAUTOMATION ;
 scalar_t__ TYPE_E_REGISTRYACCESS ;
 scalar_t__ UnRegisterTypeLib (TYPE_2__ const*,int ,int ,int ,int ) ;
 scalar_t__ broken (int) ;
 scalar_t__ is_win64 ;
 scalar_t__ myRegDeleteTreeW (int ,int *,int const) ;
 int ok (int,char*,...) ;
 int pIsWow64Process (int ,scalar_t__*) ;
 int uk ;
 int win_skip (char*) ;
 int wszStdOle2 ;

__attribute__((used)) static void test_stub(void)
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
    static DWORD sam_list64[] = { 0, 129, 128, ~0 };

    if (pIsWow64Process)
        pIsWow64Process(GetCurrentProcess(), &is_wow64);
    if (is_wow64 || is_win64)
        sam_list = sam_list64;
    else
        sam_list = sam_list32;

    CoInitializeEx(((void*)0), COINIT_APARTMENTTHREADED);

    hr = LoadTypeLib(wszStdOle2, &stdole);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ITypeLib_GetTypeInfoOfGuid(stdole, &IID_IUnknown, &unk);
    ok(hr == S_OK, "got %08x\n", hr);

    GetTempFileNameA(".", "tlb", 0, filenameA);
    MultiByteToWideChar(CP_ACP, 0, filenameA, -1, filenameW, MAX_PATH);

    hr = CreateTypeLib2(SYS_WIN32, filenameW, &ctl);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeLib2_SetGuid(ctl, &libguid);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeLib2_SetLcid(ctl, LOCALE_NEUTRAL);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeLib2_CreateTypeInfo(ctl, interfaceW, TKIND_INTERFACE, &cti);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_SetGuid(cti, &interfaceguid);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_SetTypeFlags(cti, TYPEFLAG_FOLEAUTOMATION);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_AddRefTypeInfo(cti, unk, &href);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_AddImplType(cti, 0, href);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_QueryInterface(cti, &IID_ITypeInfo, (void**)&ti);
    ok(hr == S_OK, "got %08x\n", hr);

    ICreateTypeInfo_Release(cti);
    ITypeInfo_Release(unk);
    ITypeLib_Release(stdole);

    hr = ICreateTypeLib2_CreateTypeInfo(ctl, classW, TKIND_COCLASS, &cti);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_SetGuid(cti, &coclassguid);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_AddRefTypeInfo(cti, ti, &href);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_AddImplType(cti, 0, href);
    ok(hr == S_OK, "got %08x\n", hr);

    ITypeInfo_Release(ti);
    ICreateTypeInfo_Release(cti);

    hr = ICreateTypeLib2_SaveAllChanges(ctl);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeLib2_QueryInterface(ctl, &IID_ITypeLib, (void**)&tl);
    ok(hr == S_OK, "got %08x\n", hr);

    for (i = 0; sam_list[i] != ~0; i++)
    {
        IPSFactoryBuffer *factory;
        IRpcStubBuffer *base_stub;
        REGSAM side = sam_list[i];
        CLSID clsid;
        HKEY hkey;
        LONG lr;

        hr = RegisterTypeLib(tl, filenameW, ((void*)0));
        if (hr == TYPE_E_REGISTRYACCESS)
        {
            win_skip("Insufficient privileges to register typelib in the registry\n");
            break;
        }
        ok(hr == S_OK, "got %08x, side: %04x\n", hr, side);


        lr = RegOpenKeyExA(HKEY_CLASSES_ROOT, "TypeLib\\{3b9ff02e-9675-4861-b781-ceaea4782acc}\\0.0\\0\\win64", 0, KEY_READ | side, &hkey);
        ok(lr == ERROR_FILE_NOT_FOUND, "got wrong return code: %u, side: %04x\n", lr, side);

        lr = RegOpenKeyExA(HKEY_CLASSES_ROOT, "TypeLib\\{3b9ff02e-9675-4861-b781-ceaea4782acc}\\0.0\\0\\win32", 0, KEY_READ | side, &hkey);
        ok(lr == ERROR_SUCCESS, "got wrong return code: %u, side: %04x\n", lr, side);
        RegCloseKey(hkey);


        if (side != 0)
        {
            WCHAR guidW[40];
            REGSAM opposite = side ^ (128 | 129);

            StringFromGUID2(&interfaceguid, guidW, ARRAY_SIZE(guidW));


            lr = RegOpenKeyExA(HKEY_CLASSES_ROOT, "Interface", 0, KEY_READ | opposite, &hkey);
            ok(lr == ERROR_SUCCESS, "got wrong return code: %u, side: %04x\n", lr, side);
            lr = myRegDeleteTreeW(hkey, guidW, opposite);
            ok(lr == ERROR_SUCCESS, "got wrong return code: %u, side: %04x\n", lr, side);
            RegCloseKey(hkey);


            lr = RegOpenKeyExA(HKEY_CLASSES_ROOT, "Interface\\{3b9ff02f-9675-4861-b781-ceaea4782acc}", 0, KEY_READ | side, &hkey);
            ok(lr == ERROR_SUCCESS || broken(lr == ERROR_FILE_NOT_FOUND), "got wrong return code: %u, side: %04x\n", lr, side);
            if (lr == ERROR_FILE_NOT_FOUND)
            {

                win_skip("Registry reflection is enabled on this platform.\n");
                goto next;
            }
            RegCloseKey(hkey);


            lr = RegOpenKeyExA(HKEY_CLASSES_ROOT, "TypeLib\\{3b9ff02e-9675-4861-b781-ceaea4782acc}\\0.0\\0\\win32", 0, KEY_READ | opposite, &hkey);
            ok(lr == ERROR_SUCCESS, "got wrong return code: %u, side: %04x\n", lr, side);
            RegCloseKey(hkey);
        }

        hr = CoGetPSClsid(&interfaceguid, &clsid);
        ok(hr == S_OK, "got: %x, side: %04x\n", hr, side);

        hr = CoGetClassObject(&clsid, CLSCTX_INPROC_SERVER, ((void*)0),
                              &IID_IPSFactoryBuffer, (void **)&factory);
        ok(hr == S_OK, "got: %x, side: %04x\n", hr, side);

        hr = IPSFactoryBuffer_CreateStub(factory, &interfaceguid, &uk, &base_stub);
        ok(hr == S_OK, "got: %x, side: %04x\n", hr, side);
        IRpcStubBuffer_Release(base_stub);

        IPSFactoryBuffer_Release(factory);
    next:
        hr = UnRegisterTypeLib(&libguid, 0, 0, 0, SYS_WIN32);
        ok(hr == S_OK, "got: %x, side: %04x\n", hr, side);
    }

    ITypeLib_Release(tl);
    ok(0 == ICreateTypeLib2_Release(ctl), "Typelib still has references\n");

    DeleteFileW(filenameW);

    CoUninitialize();
}
