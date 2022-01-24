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
typedef  int /*<<< orphan*/  version ;
typedef  char WCHAR ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static BOOL FUNC6(LPWSTR path, int abi_version)
{
    static const WCHAR mono_key[] = {'S','o','f','t','w','a','r','e','\\','N','o','v','e','l','l','\\','M','o','n','o',0};
    static const WCHAR defaul_clr[] = {'D','e','f','a','u','l','t','C','L','R',0};
    static const WCHAR install_root[] = {'S','d','k','I','n','s','t','a','l','l','R','o','o','t',0};
    static const WCHAR slash[] = {'\\',0};

    WCHAR version[64], version_key[MAX_PATH];
    DWORD len;
    HKEY key;
    WCHAR dll_path[MAX_PATH];

    if (FUNC1(HKEY_LOCAL_MACHINE, mono_key, 0, KEY_READ, &key))
        return FALSE;

    len = sizeof(version);
    if (FUNC2(key, defaul_clr, 0, NULL, (LPBYTE)version, &len))
    {
        FUNC0(key);
        return FALSE;
    }
    FUNC0(key);

    FUNC5(version_key, mono_key);
    FUNC4(version_key, slash);
    FUNC4(version_key, version);

    if (FUNC1(HKEY_LOCAL_MACHINE, version_key, 0, KEY_READ, &key))
        return FALSE;

    len = sizeof(WCHAR) * MAX_PATH;
    if (FUNC2(key, install_root, 0, NULL, (LPBYTE)path, &len))
    {
        FUNC0(key);
        return FALSE;
    }
    FUNC0(key);

    return FUNC3(path, dll_path, abi_version);
}