
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid ;
typedef int WORD ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {scalar_t__ typekind; int wTypeFlags; int guid; } ;
typedef scalar_t__ TYPEKIND ;
typedef TYPE_1__ TYPEATTR ;
typedef int REGSAM ;
typedef int LONG ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;
typedef int HREFTYPE ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int DeleteFileA (char const*) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 int HKEY_CLASSES_ROOT ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetRefTypeOfImplType (int *,int,int *) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_1__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_1__*) ;
 int ITypeLib_GetTypeInfo (int *,int,int **) ;
 int ITypeLib_GetTypeInfoCount (int *) ;
 int ITypeLib_Release (int *) ;
 int KEY_READ ;
 int KEY_WOW64_32KEY ;
 int KEY_WOW64_64KEY ;
 int LIBID_register_test ;
 int LOCALE_NEUTRAL ;
 int LoadTypeLibEx (int *,int ,int **) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int REGKIND_NONE ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExA (int ,char*,int ,int,int *) ;
 int RegisterTypeLib (int *,int *,int *) ;
 int SYS_WIN32 ;
 int SYS_WIN64 ;
 int S_OK ;
 int StringFromGUID2 (int *,int *,int ) ;
 scalar_t__ TKIND_DISPATCH ;
 scalar_t__ TKIND_INTERFACE ;
 scalar_t__ TKIND_RECORD ;
 int TYPEFLAG_FDISPATCHABLE ;
 int TYPEFLAG_FDUAL ;
 int TYPEFLAG_FOLEAUTOMATION ;
 int TYPE_E_REGISTRYACCESS ;
 int UnRegisterTypeLib (int *,int,int ,int ,int ) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 char* create_test_typelib (int) ;
 scalar_t__ is_win64 ;
 int ok (int,char*,...) ;
 int pIsWow64Process (int ,scalar_t__*) ;
 int pRegisterTypeLibForUser (int *,int *,int *) ;
 int pUnRegisterTypeLibForUser (int *,int,int ,int ,int ) ;
 int sprintf (char*,char*,char*) ;
 int trace (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_register_typelib(BOOL system_registration)
{
    HRESULT hr;
    WCHAR filename[MAX_PATH];
    const char *filenameA;
    ITypeLib *typelib;
    WCHAR uuidW[40];
    char key_name[MAX_PATH], uuid[40];
    LONG ret, expect_ret;
    UINT count, i;
    HKEY hkey;
    REGSAM opposite = (sizeof(void*) == 8 ? KEY_WOW64_32KEY : KEY_WOW64_64KEY);
    BOOL is_wow64 = FALSE;
    struct
    {
        TYPEKIND kind;
        WORD flags;
    } attrs[] =
    {
        { TKIND_INTERFACE, 0 },
        { TKIND_INTERFACE, TYPEFLAG_FDISPATCHABLE },
        { TKIND_INTERFACE, TYPEFLAG_FOLEAUTOMATION },
        { TKIND_INTERFACE, TYPEFLAG_FDISPATCHABLE | TYPEFLAG_FOLEAUTOMATION },
        { TKIND_DISPATCH, TYPEFLAG_FDUAL },
        { TKIND_DISPATCH, TYPEFLAG_FDUAL },
        { TKIND_DISPATCH, TYPEFLAG_FDISPATCHABLE | TYPEFLAG_FDUAL },
        { TKIND_DISPATCH, TYPEFLAG_FDISPATCHABLE | TYPEFLAG_FDUAL },
        { TKIND_DISPATCH, TYPEFLAG_FDISPATCHABLE },
        { TKIND_DISPATCH, TYPEFLAG_FDISPATCHABLE },
        { TKIND_DISPATCH, TYPEFLAG_FDISPATCHABLE },
        { TKIND_INTERFACE, TYPEFLAG_FDISPATCHABLE },
        { TKIND_INTERFACE, TYPEFLAG_FDISPATCHABLE },
        { TKIND_RECORD, 0 }
    };

    trace("Starting %s typelib registration tests\n",
          system_registration ? "system" : "user");

    if (!system_registration && (!pRegisterTypeLibForUser || !pUnRegisterTypeLibForUser))
    {
        win_skip("User typelib registration functions are not available\n");
        return;
    }

    if (pIsWow64Process)
        pIsWow64Process(GetCurrentProcess(), &is_wow64);

    filenameA = create_test_typelib(3);
    MultiByteToWideChar(CP_ACP, 0, filenameA, -1, filename, MAX_PATH);

    hr = LoadTypeLibEx(filename, REGKIND_NONE, &typelib);
    ok(hr == S_OK, "got %08x\n", hr);

    if (system_registration)
        hr = RegisterTypeLib(typelib, filename, ((void*)0));
    else
        hr = pRegisterTypeLibForUser(typelib, filename, ((void*)0));
    if (hr == TYPE_E_REGISTRYACCESS)
    {
        win_skip("Insufficient privileges to register typelib in the registry\n");
        ITypeLib_Release(typelib);
        DeleteFileA(filenameA);
        return;
    }
    ok(hr == S_OK, "got %08x\n", hr);

    count = ITypeLib_GetTypeInfoCount(typelib);
    ok(count == 14, "got %d\n", count);

    for(i = 0; i < count; i++)
    {
        ITypeInfo *typeinfo;
        TYPEATTR *attr;

        hr = ITypeLib_GetTypeInfo(typelib, i, &typeinfo);
        ok(hr == S_OK, "got %08x\n", hr);

        hr = ITypeInfo_GetTypeAttr(typeinfo, &attr);
        ok(hr == S_OK, "got %08x\n", hr);

        ok(attr->typekind == attrs[i].kind, "%d: got kind %d\n", i, attr->typekind);
        ok(attr->wTypeFlags == attrs[i].flags, "%d: got flags %04x\n", i, attr->wTypeFlags);

        if(attr->typekind == TKIND_DISPATCH && (attr->wTypeFlags & TYPEFLAG_FDUAL))
        {
            HREFTYPE reftype;
            ITypeInfo *dual_info;
            TYPEATTR *dual_attr;

            hr = ITypeInfo_GetRefTypeOfImplType(typeinfo, -1, &reftype);
            ok(hr == S_OK, "got %08x\n", hr);

            hr = ITypeInfo_GetRefTypeInfo(typeinfo, reftype, &dual_info);
            ok(hr == S_OK, "got %08x\n", hr);

            hr = ITypeInfo_GetTypeAttr(dual_info, &dual_attr);
            ok(hr == S_OK, "got %08x\n", hr);

            ok(dual_attr->typekind == TKIND_INTERFACE, "%d: got kind %d\n", i, dual_attr->typekind);
            ok(dual_attr->wTypeFlags == (attrs[i].flags | TYPEFLAG_FOLEAUTOMATION),
                "%d: got flags %04x\n", i, dual_attr->wTypeFlags);

            ITypeInfo_ReleaseTypeAttr(dual_info, dual_attr);
            ITypeInfo_Release(dual_info);

        }

        StringFromGUID2(&attr->guid, uuidW, ARRAY_SIZE(uuidW));
        WideCharToMultiByte(CP_ACP, 0, uuidW, -1, uuid, sizeof(uuid), ((void*)0), ((void*)0));
        sprintf(key_name, "Interface\\%s", uuid);



        if((attr->typekind == TKIND_INTERFACE && (attr->wTypeFlags & TYPEFLAG_FOLEAUTOMATION)) ||
           attr->typekind == TKIND_DISPATCH)
            expect_ret = ERROR_SUCCESS;
        else
            expect_ret = ERROR_FILE_NOT_FOUND;

        ret = RegOpenKeyExA(HKEY_CLASSES_ROOT, key_name, 0, KEY_READ, &hkey);
        ok(ret == expect_ret, "%d: got %d\n", i, ret);
        if(ret == ERROR_SUCCESS) RegCloseKey(hkey);


        if (is_win64 || is_wow64)
        {
            ret = RegOpenKeyExA(HKEY_CLASSES_ROOT, key_name, 0, KEY_READ | opposite, &hkey);
            ok(ret == expect_ret, "%d: got %d\n", i, ret);
            if(ret == ERROR_SUCCESS) RegCloseKey(hkey);
        }

        ITypeInfo_ReleaseTypeAttr(typeinfo, attr);
        ITypeInfo_Release(typeinfo);
    }

    if (system_registration)
        hr = UnRegisterTypeLib(&LIBID_register_test, 1, 0, LOCALE_NEUTRAL, is_win64 ? SYS_WIN64 : SYS_WIN32);
    else
        hr = pUnRegisterTypeLibForUser(&LIBID_register_test, 1, 0, LOCALE_NEUTRAL, is_win64 ? SYS_WIN64 : SYS_WIN32);
    ok(hr == S_OK, "got %08x\n", hr);

    for(i = 0; i < count; i++)
    {
        ITypeInfo *typeinfo;
        TYPEATTR *attr;

        hr = ITypeLib_GetTypeInfo(typelib, i, &typeinfo);
        ok(hr == S_OK, "got %08x\n", hr);

        hr = ITypeInfo_GetTypeAttr(typeinfo, &attr);
        ok(hr == S_OK, "got %08x\n", hr);

        if((attr->typekind == TKIND_INTERFACE && (attr->wTypeFlags & TYPEFLAG_FOLEAUTOMATION)) ||
           attr->typekind == TKIND_DISPATCH)
        {
            StringFromGUID2(&attr->guid, uuidW, ARRAY_SIZE(uuidW));
            WideCharToMultiByte(CP_ACP, 0, uuidW, -1, uuid, sizeof(uuid), ((void*)0), ((void*)0));
            sprintf(key_name, "Interface\\%s", uuid);

            ret = RegOpenKeyExA(HKEY_CLASSES_ROOT, key_name, 0, KEY_READ, &hkey);
            ok(ret == ERROR_FILE_NOT_FOUND, "Interface registry remains in %s (%d)\n", key_name, i);
            if (is_win64 || is_wow64)
            {
                ret = RegOpenKeyExA(HKEY_CLASSES_ROOT, key_name, 0, KEY_READ | opposite, &hkey);
                ok(ret == ERROR_FILE_NOT_FOUND, "Interface registry remains in %s (%d)\n", key_name, i);
            }
        }
        ITypeInfo_ReleaseTypeAttr(typeinfo, attr);
        ITypeInfo_Release(typeinfo);
    }

    ITypeLib_Release(typelib);
    DeleteFileA( filenameA );
}
