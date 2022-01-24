#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_4__ {scalar_t__ typekind; int wTypeFlags; int /*<<< orphan*/  guid; } ;
typedef  scalar_t__ TYPEKIND ;
typedef  TYPE_1__ TYPEATTR ;
typedef  int REGSAM ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HREFTYPE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int KEY_READ ; 
 int KEY_WOW64_32KEY ; 
 int KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  LIBID_register_test ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  REGKIND_NONE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_WIN32 ; 
 int /*<<< orphan*/  SYS_WIN64 ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ TKIND_DISPATCH ; 
 scalar_t__ TKIND_INTERFACE ; 
 scalar_t__ TKIND_RECORD ; 
 int TYPEFLAG_FDISPATCHABLE ; 
 int TYPEFLAG_FDUAL ; 
 int TYPEFLAG_FOLEAUTOMATION ; 
 int /*<<< orphan*/  TYPE_E_REGISTRYACCESS ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC19 (int) ; 
 scalar_t__ is_win64 ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 

__attribute__((used)) static void FUNC27(BOOL system_registration)
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
        { TKIND_DISPATCH,  TYPEFLAG_FDUAL },
        { TKIND_DISPATCH,  TYPEFLAG_FDUAL },
        { TKIND_DISPATCH,  TYPEFLAG_FDISPATCHABLE | TYPEFLAG_FDUAL },
        { TKIND_DISPATCH,  TYPEFLAG_FDISPATCHABLE | TYPEFLAG_FDUAL },
        { TKIND_DISPATCH,  TYPEFLAG_FDISPATCHABLE },
        { TKIND_DISPATCH,  TYPEFLAG_FDISPATCHABLE },
        { TKIND_DISPATCH,  TYPEFLAG_FDISPATCHABLE },
        { TKIND_INTERFACE, TYPEFLAG_FDISPATCHABLE },
        { TKIND_INTERFACE, TYPEFLAG_FDISPATCHABLE },
        { TKIND_RECORD, 0 }
    };

    FUNC25("Starting %s typelib registration tests\n",
          system_registration ? "system" : "user");

    if (!system_registration && (!&pRegisterTypeLibForUser || !&pUnRegisterTypeLibForUser))
    {
        FUNC26("User typelib registration functions are not available\n");
        return;
    }

    if (&pIsWow64Process)
        FUNC21(FUNC2(), &is_wow64);

    filenameA = FUNC19(3);
    FUNC12(CP_ACP, 0, filenameA, -1, filename, MAX_PATH);

    hr = FUNC11(filename, REGKIND_NONE, &typelib);
    FUNC20(hr == S_OK, "got %08x\n", hr);

    if (system_registration)
        hr = FUNC15(typelib, filename, NULL);
    else
        hr = FUNC22(typelib, filename, NULL);
    if (hr == TYPE_E_REGISTRYACCESS)
    {
        FUNC26("Insufficient privileges to register typelib in the registry\n");
        FUNC10(typelib);
        FUNC1(filenameA);
        return;
    }
    FUNC20(hr == S_OK, "got %08x\n", hr);

    count = FUNC9(typelib);
    FUNC20(count == 14, "got %d\n", count);

    for(i = 0; i < count; i++)
    {
        ITypeInfo *typeinfo;
        TYPEATTR *attr;

        hr = FUNC8(typelib, i, &typeinfo);
        FUNC20(hr == S_OK, "got %08x\n", hr);

        hr = FUNC5(typeinfo, &attr);
        FUNC20(hr == S_OK, "got %08x\n", hr);

        FUNC20(attr->typekind == attrs[i].kind, "%d: got kind %d\n", i, attr->typekind);
        FUNC20(attr->wTypeFlags == attrs[i].flags, "%d: got flags %04x\n", i, attr->wTypeFlags);

        if(attr->typekind == TKIND_DISPATCH && (attr->wTypeFlags & TYPEFLAG_FDUAL))
        {
            HREFTYPE reftype;
            ITypeInfo *dual_info;
            TYPEATTR *dual_attr;

            hr = FUNC4(typeinfo, -1, &reftype);
            FUNC20(hr == S_OK, "got %08x\n", hr);

            hr = FUNC3(typeinfo, reftype, &dual_info);
            FUNC20(hr == S_OK, "got %08x\n", hr);

            hr = FUNC5(dual_info, &dual_attr);
            FUNC20(hr == S_OK, "got %08x\n", hr);

            FUNC20(dual_attr->typekind == TKIND_INTERFACE, "%d: got kind %d\n", i, dual_attr->typekind);
            FUNC20(dual_attr->wTypeFlags == (attrs[i].flags | TYPEFLAG_FOLEAUTOMATION),
                "%d: got flags %04x\n", i, dual_attr->wTypeFlags);

            FUNC7(dual_info, dual_attr);
            FUNC6(dual_info);

        }

        FUNC16(&attr->guid, uuidW, FUNC0(uuidW));
        FUNC18(CP_ACP, 0, uuidW, -1, uuid, sizeof(uuid), NULL, NULL);
        FUNC24(key_name, "Interface\\%s", uuid);

        /* All dispinterfaces will be registered (this includes dual interfaces) as well
           as oleautomation interfaces */
        if((attr->typekind == TKIND_INTERFACE && (attr->wTypeFlags & TYPEFLAG_FOLEAUTOMATION)) ||
           attr->typekind == TKIND_DISPATCH)
            expect_ret = ERROR_SUCCESS;
        else
            expect_ret = ERROR_FILE_NOT_FOUND;

        ret = FUNC14(HKEY_CLASSES_ROOT, key_name, 0, KEY_READ, &hkey);
        FUNC20(ret == expect_ret, "%d: got %d\n", i, ret);
        if(ret == ERROR_SUCCESS) FUNC13(hkey);

        /* 32-bit typelibs should be registered into both registry bit modes */
        if (is_win64 || is_wow64)
        {
            ret = FUNC14(HKEY_CLASSES_ROOT, key_name, 0, KEY_READ | opposite, &hkey);
            FUNC20(ret == expect_ret, "%d: got %d\n", i, ret);
            if(ret == ERROR_SUCCESS) FUNC13(hkey);
        }

        FUNC7(typeinfo, attr);
        FUNC6(typeinfo);
    }

    if (system_registration)
        hr = FUNC17(&LIBID_register_test, 1, 0, LOCALE_NEUTRAL, is_win64 ? SYS_WIN64 : SYS_WIN32);
    else
        hr = FUNC23(&LIBID_register_test, 1, 0, LOCALE_NEUTRAL, is_win64 ? SYS_WIN64 : SYS_WIN32);
    FUNC20(hr == S_OK, "got %08x\n", hr);

    for(i = 0; i < count; i++)
    {
        ITypeInfo *typeinfo;
        TYPEATTR *attr;

        hr = FUNC8(typelib, i, &typeinfo);
        FUNC20(hr == S_OK, "got %08x\n", hr);

        hr = FUNC5(typeinfo, &attr);
        FUNC20(hr == S_OK, "got %08x\n", hr);

        if((attr->typekind == TKIND_INTERFACE && (attr->wTypeFlags & TYPEFLAG_FOLEAUTOMATION)) ||
           attr->typekind == TKIND_DISPATCH)
        {
            FUNC16(&attr->guid, uuidW, FUNC0(uuidW));
            FUNC18(CP_ACP, 0, uuidW, -1, uuid, sizeof(uuid), NULL, NULL);
            FUNC24(key_name, "Interface\\%s", uuid);

            ret = FUNC14(HKEY_CLASSES_ROOT, key_name, 0, KEY_READ, &hkey);
            FUNC20(ret == ERROR_FILE_NOT_FOUND, "Interface registry remains in %s (%d)\n", key_name, i);
            if (is_win64 || is_wow64)
            {
                ret = FUNC14(HKEY_CLASSES_ROOT, key_name, 0, KEY_READ | opposite, &hkey);
                FUNC20(ret == ERROR_FILE_NOT_FOUND, "Interface registry remains in %s (%d)\n", key_name, i);
            }
        }
        FUNC7(typeinfo, attr);
        FUNC6(typeinfo);
    }

    FUNC10(typelib);
    FUNC1( filenameA );
}