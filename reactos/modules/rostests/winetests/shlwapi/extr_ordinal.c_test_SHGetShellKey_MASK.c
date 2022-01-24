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
typedef  int /*<<< orphan*/  data ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int SHKEY_Key_Classes ; 
 int SHKEY_Key_Explorer ; 
 int SHKEY_Root_HKCU ; 
 int SHKEY_Root_HKLM ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const WCHAR ShellFoldersW[] = { 'S','h','e','l','l',' ','F','o','l','d','e','r','s',0 };
    static const WCHAR WineTestW[] = { 'W','i','n','e','T','e','s','t',0 };

    DWORD *alloc_data, data, size;
    HKEY hkey;
    HRESULT hres;

    /* Vista+ limits SHKEY enumeration values */
    FUNC6(0xdeadbeef);
    hkey = FUNC8(SHKEY_Key_Explorer, ShellFoldersW, FALSE);
    if (hkey)
    {
        /* Tests not working on Vista+ */
        FUNC3(hkey);

        hkey = FUNC8(SHKEY_Root_HKLM|SHKEY_Key_Classes, NULL, FALSE);
        FUNC7(hkey != NULL, "hkey = NULL\n");
        FUNC3(hkey);
    }

    hkey = FUNC8(SHKEY_Root_HKCU|SHKEY_Key_Explorer, ShellFoldersW, FALSE);
    FUNC7(hkey != NULL, "hkey = NULL\n");
    FUNC3(hkey);

    hkey = FUNC8(SHKEY_Root_HKLM|SHKEY_Key_Explorer, ShellFoldersW, FALSE);
    FUNC7(hkey != NULL, "hkey = NULL\n");
    FUNC3(hkey);

    hkey = FUNC8(SHKEY_Root_HKLM, WineTestW, FALSE);
    FUNC7(hkey == NULL, "hkey != NULL\n");

    hkey = FUNC8(SHKEY_Root_HKLM, NULL, FALSE);
    FUNC7(hkey != NULL, "Can't open key\n");
    FUNC7(FUNC5(FUNC4(hkey, WineTestW)), "Can't delete key\n");
    FUNC3(hkey);

    hkey = FUNC8(SHKEY_Root_HKLM, WineTestW, TRUE);
    if (!hkey && FUNC0() == ERROR_ACCESS_DENIED)
    {
        FUNC13("Not authorized to create keys\n");
        return;
    }
    FUNC7(hkey != NULL, "Can't create key\n");
    FUNC3(hkey);

    size = sizeof(data);
    hres = FUNC11(SHKEY_Root_HKLM, WineTestW, NULL, NULL, &data, &size);
    FUNC7(hres == FUNC1(ERROR_FILE_NOT_FOUND), "hres = %x\n", hres);

    data = 1234;
    hres = FUNC12(SHKEY_Root_HKLM, WineTestW, NULL, REG_DWORD, &data, sizeof(DWORD));
    FUNC7(hres == S_OK, "hres = %x\n", hres);

    size = 1;
    hres = FUNC11(SHKEY_Root_HKLM, WineTestW, NULL, NULL, NULL, &size);
    FUNC7(hres == S_OK, "hres = %x\n", hres);
    FUNC7(size == sizeof(DWORD), "size = %d\n", size);

    data = 0xdeadbeef;
    hres = FUNC11(SHKEY_Root_HKLM, WineTestW, NULL, NULL, &data, &size);
    FUNC7(hres == S_OK, "hres = %x\n", hres);
    FUNC7(size == sizeof(DWORD), "size = %d\n", size);
    FUNC7(data == 1234, "data = %d\n", data);

    hres = FUNC9(SHKEY_Root_HKLM, WineTestW, NULL, NULL, (void**)&alloc_data, &size);
    FUNC7(hres == S_OK, "hres= %x\n", hres);
    FUNC7(size == sizeof(DWORD), "size = %d\n", size);
    if (FUNC5(hres))
    {
        FUNC7(*alloc_data == 1234, "*alloc_data = %d\n", *alloc_data);
        FUNC2(alloc_data);
    }

    hres = FUNC10(SHKEY_Root_HKLM, WineTestW, NULL);
    FUNC7(hres == S_OK, "hres = %x\n", hres);

    hres = FUNC10(SHKEY_Root_HKLM, WineTestW, NULL);
    FUNC7(hres == FUNC1(ERROR_FILE_NOT_FOUND), "hres = %x\n", hres);

    hres = FUNC11(SHKEY_Root_HKLM, WineTestW, NULL, NULL, &data, &size);
    FUNC7(hres == FUNC1(ERROR_FILE_NOT_FOUND), "hres = %x\n", hres);

    hkey = FUNC8(SHKEY_Root_HKLM, NULL, FALSE);
    FUNC7(hkey != NULL, "Can't create key\n");
    FUNC7(FUNC5(FUNC4(hkey, WineTestW)), "Can't delete key\n");
    FUNC3(hkey);
}