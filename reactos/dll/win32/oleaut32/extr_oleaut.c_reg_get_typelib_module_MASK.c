#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ver ;
typedef  int /*<<< orphan*/  typelibkey ;
typedef  int /*<<< orphan*/  tlguid ;
typedef  int /*<<< orphan*/  tlfn ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int Data1; int Data2; int Data3; int* Data4; } ;
typedef  int REGSAM ;
typedef  TYPE_1__* REFIID ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int KEY_READ ; 
 int KEY_WOW64_32KEY ; 
 int KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 

__attribute__((used)) static HRESULT FUNC10(REFIID iid, WCHAR *module, DWORD len)
{
    REGSAM opposite = (sizeof(void*) == 8) ? KEY_WOW64_32KEY : KEY_WOW64_64KEY;
    char tlguid[200], typelibkey[300], interfacekey[300], ver[100], tlfn[260];
    DWORD tlguidlen, verlen, type;
    LONG tlfnlen, err;
    BOOL is_wow64;
    HKEY ikey;

    FUNC9( interfacekey, "Interface\\{%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}\\Typelib",
        iid->Data1, iid->Data2, iid->Data3,
        iid->Data4[0], iid->Data4[1], iid->Data4[2], iid->Data4[3],
        iid->Data4[4], iid->Data4[5], iid->Data4[6], iid->Data4[7]
    );

    err = FUNC5(HKEY_CLASSES_ROOT,interfacekey,0,KEY_READ,&ikey);
    if (err && (opposite == KEY_WOW64_32KEY || (FUNC2(FUNC1(), &is_wow64)
                                                && is_wow64)))
        err = FUNC5(HKEY_CLASSES_ROOT,interfacekey,0,KEY_READ|opposite,&ikey);

    if (err)
    {
        FUNC0("No %s key found.\n", interfacekey);
        return E_FAIL;
    }

    tlguidlen = sizeof(tlguid);
    if (FUNC7(ikey, NULL, NULL, &type, (BYTE *)tlguid, &tlguidlen))
    {
        FUNC0("Getting typelib guid failed.\n");
        FUNC4(ikey);
        return E_FAIL;
    }

    verlen = sizeof(ver);
    if (FUNC7(ikey, "Version", NULL, &type, (BYTE *)ver, &verlen))
    {
        FUNC0("Could not get version value?\n");
        FUNC4(ikey);
        return E_FAIL;
    }

    FUNC4(ikey);

#ifndef __REACTOS__
    FUNC9(typelibkey, "Typelib\\%s\\%s\\0\\win%u", tlguid, ver, sizeof(void *) == 8 ? 64 : 32);
#else
    snprintf(typelibkey, sizeof(typelibkey), "Typelib\\%s\\%s\\0\\win%u", tlguid, ver, sizeof(void *) == 8 ? 64 : 32);
#endif // __REACTOS__
    tlfnlen = sizeof(tlfn);
    if (FUNC6(HKEY_CLASSES_ROOT, typelibkey, tlfn, &tlfnlen))
    {
#ifdef _WIN64
        sprintf(typelibkey, "Typelib\\%s\\%s\\0\\win32", tlguid, ver);
        tlfnlen = sizeof(tlfn);
        if (RegQueryValueA(HKEY_CLASSES_ROOT, typelibkey, tlfn, &tlfnlen))
        {
#endif
            FUNC0("Could not get typelib fn?\n");
            return E_FAIL;
#ifdef _WIN64
        }
#endif
    }
    FUNC3(CP_ACP, 0, tlfn, -1, module, len);
    return S_OK;
}