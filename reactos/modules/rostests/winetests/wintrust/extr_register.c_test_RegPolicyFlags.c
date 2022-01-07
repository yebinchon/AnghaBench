
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flags1 ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int GetLastError () ;
 int HKEY_CURRENT_USER ;
 int KEY_ALL_ACCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char const*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,char const*,int *,int *,int ,int*) ;
 int ok (int,char*,int,...) ;
 int pWintrustGetRegPolicyFlags (int*) ;
 int pWintrustSetRegPolicyFlags (int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RegPolicyFlags(void)
{







    static const CHAR Software_Publishing[] =
     "Software\\Microsoft\\Windows\\CurrentVersion\\Wintrust\\"
     "Trust Providers\\Software Publishing";
    static const CHAR State[] = "State";
    HKEY key;
    LONG r;
    DWORD flags1, flags2, flags3, size;
    BOOL ret;

    if (!pWintrustGetRegPolicyFlags || !pWintrustSetRegPolicyFlags)
    {
        win_skip("Policy flags functions not present\n");
        return;
    }

    pWintrustGetRegPolicyFlags(&flags2);

    r = RegOpenKeyExA(HKEY_CURRENT_USER, Software_Publishing, 0, KEY_ALL_ACCESS,
     &key);
    ok(!r, "RegOpenKeyEx failed: %d\n", r);

    size = sizeof(flags1);
    r = RegQueryValueExA(key, State, ((void*)0), ((void*)0), (LPBYTE)&flags1, &size);
    ok(!r || r == ERROR_FILE_NOT_FOUND, "RegQueryValueEx failed: %d\n", r);
    if (!r)
        ok(flags1 == flags2, "Got %08x flags instead of %08x\n", flags1, flags2);

    flags3 = flags2 | 1;
    ret = pWintrustSetRegPolicyFlags(flags3);
    ok(ret, "WintrustSetRegPolicyFlags failed: %d\n", GetLastError());
    size = sizeof(flags1);
    r = RegQueryValueExA(key, State, ((void*)0), ((void*)0), (LPBYTE)&flags1, &size);
    ok(!r, "RegQueryValueEx failed: %d\n", r);
    ok(flags1 == flags3, "Got %08x flags instead of %08x\n", flags1, flags3);

    pWintrustSetRegPolicyFlags(flags2);

    RegCloseKey(key);
}
