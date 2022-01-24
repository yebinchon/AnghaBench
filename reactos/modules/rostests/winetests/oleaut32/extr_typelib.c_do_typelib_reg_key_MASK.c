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
typedef  int /*<<< orphan*/  typelibW ;
typedef  scalar_t__ WORD ;
typedef  char WCHAR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ TRUE ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC13(GUID *uid, WORD maj, WORD min, DWORD arch, LPCWSTR base, BOOL remove)
{
    static const WCHAR typelibW[] = {'T','y','p','e','l','i','b','\\',0};
    static const WCHAR formatW[] = {'\\','%','u','.','%','u','\\','0','\\','w','i','n','%','u',0};
    static const WCHAR format2W[] = {'%','s','_','%','u','_','%','u','.','d','l','l',0};
    WCHAR buf[128];
    HKEY hkey;
    BOOL ret = TRUE;
    DWORD res;

    FUNC7(buf, typelibW, sizeof(typelibW));
    FUNC5(uid, buf + FUNC6(buf), 40);

    if (remove)
    {
        FUNC9(FUNC8(HKEY_CLASSES_ROOT, buf, 0) == ERROR_SUCCESS, "SHDeleteKey failed\n");
        return TRUE;
    }

    FUNC12(buf + FUNC6(buf), formatW, maj, min, arch);

    FUNC4(0xdeadbeef);
    res = FUNC2(HKEY_CLASSES_ROOT, buf, 0, NULL, 0,
                          KEY_WRITE, NULL, &hkey, NULL);
    if (FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC11("W-calls are not implemented\n");
        return FALSE;
    }

    if (res != ERROR_SUCCESS)
    {
        FUNC10("RegCreateKeyExW failed: %u\n", res);
        return FALSE;
    }

    FUNC12(buf, format2W, base, maj, min);
    if (FUNC3(hkey, NULL, 0, REG_SZ,
                       (BYTE *)buf, (FUNC6(buf) + 1) * sizeof(WCHAR)) != ERROR_SUCCESS)
    {
        FUNC10("RegSetValueExW failed\n");
        ret = FALSE;
    }
    FUNC1(hkey);
    return ret;
}