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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int KEY_READ ; 
 int KEY_WOW64_64KEY ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  win2k ; 

__attribute__((used)) static void FUNC6(char *unique)
{
    /* MD5 hash of "winetest\0" in 4 DWORD hex */
    static const char szContainer_md5[] = "9d20fd8d05ed2b8455d125d0bf6d6a70";
    static const char szCryptography[] = "Software\\Microsoft\\Cryptography";
    static const char szMachineGuid[] = "MachineGuid";
    HKEY hkey;
    char guid[MAX_PATH];
    DWORD size = MAX_PATH;
    HRESULT ret;

    /* Get the MachineGUID */
    ret = FUNC2(HKEY_LOCAL_MACHINE, szCryptography, 0, KEY_READ | KEY_WOW64_64KEY, &hkey);
    if (ret == ERROR_ACCESS_DENIED)
    {
        /* Windows 2000 can't handle KEY_WOW64_64KEY */
        FUNC1(HKEY_LOCAL_MACHINE, szCryptography, &hkey);
        win2k++;
    }
    FUNC3(hkey, szMachineGuid, NULL, NULL, (LPBYTE)guid, &size);
    FUNC0(hkey);

    if (!unique) return;
    FUNC5(unique, szContainer_md5);
    FUNC4(unique, "_");
    FUNC4(unique, guid);
}