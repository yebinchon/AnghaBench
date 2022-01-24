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
typedef  int /*<<< orphan*/  flags1 ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    /* Default state value 0x00023c00, which is
     *  WTPF_IGNOREREVOCATIONONTS |
     *  WTPF_OFFLINEOKNBU_COM |
     *  WTPF_OFFLINEOKNBU_IND |
     *  WTPF_OFFLINEOK_COM |
     *  WTPF_OFFLINEOK_IND
     */
    static const CHAR Software_Publishing[] =
     "Software\\Microsoft\\Windows\\CurrentVersion\\Wintrust\\"
     "Trust Providers\\Software Publishing";
    static const CHAR State[] = "State";
    HKEY key;
    LONG r;
    DWORD flags1, flags2, flags3, size;
    BOOL ret;

    if (!&pWintrustGetRegPolicyFlags || !&pWintrustSetRegPolicyFlags)
    {
        FUNC7("Policy flags functions not present\n");
        return;
    }

    FUNC5(&flags2);

    r = FUNC2(HKEY_CURRENT_USER, Software_Publishing, 0, KEY_ALL_ACCESS,
     &key);
    FUNC4(!r, "RegOpenKeyEx failed: %d\n", r);

    size = sizeof(flags1);
    r = FUNC3(key, State, NULL, NULL, (LPBYTE)&flags1, &size);
    FUNC4(!r || r == ERROR_FILE_NOT_FOUND, "RegQueryValueEx failed: %d\n", r);
    if (!r)
        FUNC4(flags1 == flags2, "Got %08x flags instead of %08x\n", flags1, flags2);

    flags3 = flags2 | 1;
    ret = FUNC6(flags3);
    FUNC4(ret, "WintrustSetRegPolicyFlags failed: %d\n", FUNC0());
    size = sizeof(flags1);
    r = FUNC3(key, State, NULL, NULL, (LPBYTE)&flags1, &size);
    FUNC4(!r, "RegQueryValueEx failed: %d\n", r);
    FUNC4(flags1 == flags3, "Got %08x flags instead of %08x\n", flags1, flags3);

    FUNC6(flags2);

    FUNC1(key);
}