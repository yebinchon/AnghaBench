
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* ptstrName; int TrusteeType; int TrusteeForm; int MultipleTrusteeOperation; int * pMultipleTrustee; } ;
struct TYPE_8__ {int grfAccessPermissions; TYPE_1__ Trustee; int grfInheritance; int grfAccessMode; } ;
struct TYPE_7__ {int member_0; } ;
typedef TYPE_2__ SID_IDENTIFIER_AUTHORITY ;
typedef int SECURITY_DESCRIPTOR ;
typedef scalar_t__ PSID ;
typedef int PACL ;
typedef scalar_t__ LONG ;
typedef int * HKEY ;
typedef TYPE_3__ EXPLICIT_ACCESSA ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ AllocateAndInitializeSid (TYPE_2__*,int,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__*) ;
 int DACL_SECURITY_INFORMATION ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_BAD_PATHNAME ;
 scalar_t__ ERROR_CHILD_MUST_BE_VOLATILE ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int FreeSid (scalar_t__) ;
 int GENERIC_ALL ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int GetVersion () ;
 int * HKEY_LOCAL_MACHINE ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ InitializeSecurityDescriptor (int *,int ) ;
 int KEY_ALL_ACCESS ;
 int KEY_NOTIFY ;
 int KEY_READ ;
 int KEY_SET_VALUE ;
 int KEY_WOW64_32KEY ;
 int KEY_WOW64_64KEY ;
 int LocalFree (int ) ;
 int NO_MULTIPLE_TRUSTEE ;
 int REG_OPTION_VOLATILE ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExA (int *,char*,int ,int *,int ,int,int *,int **,int *) ;
 int RegDeleteKeyA (int *,char*) ;
 scalar_t__ RegSetKeySecurity (int *,int ,int *) ;
 int SECURITY_DESCRIPTOR_MIN_LENGTH ;
 int SECURITY_DESCRIPTOR_REVISION ;
 int SECURITY_WORLD_RID ;
 int SECURITY_WORLD_SID_AUTHORITY ;
 int SET_ACCESS ;
 int STANDARD_RIGHTS_ALL ;
 int SUB_CONTAINERS_AND_OBJECTS_INHERIT ;
 scalar_t__ SetEntriesInAclA (int,TYPE_3__*,int *,int *) ;
 scalar_t__ SetSecurityDescriptorDacl (int *,scalar_t__,int ,int ) ;
 scalar_t__ TRUE ;
 int TRUSTEE_IS_SID ;
 int TRUSTEE_IS_WELL_KNOWN_GROUP ;
 scalar_t__ broken (int) ;
 int * hkey_main ;
 scalar_t__ limited_user ;
 int ok (int,char*,scalar_t__,...) ;
 int pIsWow64Process ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_reg_create_key(void)
{
    LONG ret;
    HKEY hkey1, hkey2;
    HKEY hkRoot64 = ((void*)0);
    HKEY hkRoot32 = ((void*)0);
    DWORD dwRet;
    BOOL bRet;
    SID_IDENTIFIER_AUTHORITY sid_authority = {SECURITY_WORLD_SID_AUTHORITY};
    PSID world_sid;
    EXPLICIT_ACCESSA access;
    PACL key_acl;
    SECURITY_DESCRIPTOR *sd;

    ret = RegCreateKeyExA(hkey_main, "Subkey1", 0, ((void*)0), 0, KEY_NOTIFY, ((void*)0), &hkey1, ((void*)0));
    ok(!ret, "RegCreateKeyExA failed with error %d\n", ret);


    ret = RegCreateKeyExA(hkey1, "Subkey2", 0, ((void*)0), 0, KEY_SET_VALUE, ((void*)0), &hkey2, ((void*)0));
    ok(!ret, "RegCreateKeyExA failed with error %d\n", ret);


    RegDeleteKeyA(hkey2, "");
    RegDeleteKeyA(hkey1, "");
    RegCloseKey(hkey2);
    RegCloseKey(hkey1);


    ret = RegCreateKeyExA(hkey_main, "Volatile", 0, ((void*)0), REG_OPTION_VOLATILE, KEY_ALL_ACCESS, ((void*)0), &hkey1, ((void*)0));
    ok(!ret, "RegCreateKeyExA failed with error %d\n", ret);
    ret = RegCreateKeyExA(hkey1, "Subkey2", 0, ((void*)0), 0, KEY_ALL_ACCESS, ((void*)0), &hkey2, ((void*)0));
    ok(ret == ERROR_CHILD_MUST_BE_VOLATILE, "RegCreateKeyExA failed with error %d\n", ret);
    if (!ret) RegCloseKey( hkey2 );
    ret = RegCreateKeyExA(hkey1, "Subkey2", 0, ((void*)0), REG_OPTION_VOLATILE, KEY_ALL_ACCESS, ((void*)0), &hkey2, ((void*)0));
    ok(!ret, "RegCreateKeyExA failed with error %d\n", ret);
    RegCloseKey(hkey2);

    ret = RegCreateKeyExA(hkey1, "Subkey2", 0, ((void*)0), 0, KEY_ALL_ACCESS, ((void*)0), &hkey2, ((void*)0));
    ok(!ret, "RegCreateKeyExA failed with error %d\n", ret);


    RegDeleteKeyA(hkey2, "");
    RegDeleteKeyA(hkey1, "");
    RegCloseKey(hkey2);
    RegCloseKey(hkey1);


    ret = RegCreateKeyExA(hkey_main, "\\Subkey3", 0, ((void*)0), 0, KEY_NOTIFY, ((void*)0), &hkey1, ((void*)0));
    if (!(GetVersion() & 0x80000000))
        ok(ret == ERROR_BAD_PATHNAME, "expected ERROR_BAD_PATHNAME, got %d\n", ret);
    else {
        ok(!ret, "RegCreateKeyExA failed with error %d\n", ret);
        RegDeleteKeyA(hkey1, "");
        RegCloseKey(hkey1);
    }


    ret = RegCreateKeyExA(hkey_main, "Subkey4\\\\", 0, ((void*)0), 0, KEY_NOTIFY, ((void*)0), &hkey1, ((void*)0));
    ok(ret == ERROR_SUCCESS, "RegCreateKeyExA failed with error %d\n", ret);
    RegDeleteKeyA(hkey1, "");
    RegCloseKey(hkey1);


    ret = RegCreateKeyExA(HKEY_LOCAL_MACHINE, "System\\CurrentControlSet\\Control\\Video\\Wine",
                          0, ((void*)0), 0, KEY_NOTIFY, ((void*)0), &hkey1, ((void*)0));
    ok(ret == ERROR_SUCCESS, "RegCreateKeyExA failed with error %d\n", ret);
    RegDeleteKeyA(hkey1, "");
    RegCloseKey(hkey1);


    hkey1 = ((void*)0);
    ret = RegCreateKeyExA(HKEY_LOCAL_MACHINE, "Software", 0, ((void*)0), 0, KEY_READ|KEY_WOW64_32KEY, ((void*)0), &hkey1, ((void*)0));
    ok((ret == ERROR_SUCCESS && hkey1 != ((void*)0)) || broken(ret == ERROR_ACCESS_DENIED ),
        "RegOpenKeyEx with KEY_WOW64_32KEY failed (err=%u)\n", ret);
    RegCloseKey(hkey1);

    hkey1 = ((void*)0);
    ret = RegCreateKeyExA(HKEY_LOCAL_MACHINE, "Software", 0, ((void*)0), 0, KEY_READ|KEY_WOW64_64KEY, ((void*)0), &hkey1, ((void*)0));
    ok((ret == ERROR_SUCCESS && hkey1 != ((void*)0)) || broken(ret == ERROR_ACCESS_DENIED ),
        "RegOpenKeyEx with KEY_WOW64_64KEY failed (err=%u)\n", ret);
    RegCloseKey(hkey1);





    if (!pIsWow64Process)
    {
        win_skip("WOW64 flags are not recognized\n");
        return;
    }

    ret = RegCreateKeyExA(HKEY_LOCAL_MACHINE, "Software\\Wine", 0, ((void*)0), 0,
                          KEY_WOW64_32KEY | KEY_ALL_ACCESS, ((void*)0), &hkRoot32, ((void*)0));
    if (limited_user)
        ok(ret == ERROR_ACCESS_DENIED && hkRoot32 == ((void*)0),
           "RegCreateKeyEx with KEY_WOW64_32KEY failed (err=%d)\n", ret);
    else
        ok(ret == ERROR_SUCCESS && hkRoot32 != ((void*)0),
           "RegCreateKeyEx with KEY_WOW64_32KEY failed (err=%d)\n", ret);

    ret = RegCreateKeyExA(HKEY_LOCAL_MACHINE, "Software\\Wine", 0, ((void*)0), 0,
                          KEY_WOW64_64KEY | KEY_ALL_ACCESS, ((void*)0), &hkRoot64, ((void*)0));
    if (limited_user)
        ok(ret == ERROR_ACCESS_DENIED && hkRoot64 == ((void*)0),
           "RegCreateKeyEx with KEY_WOW64_64KEY failed (err=%d)\n", ret);
    else
        ok(ret == ERROR_SUCCESS && hkRoot64 != ((void*)0),
           "RegCreateKeyEx with KEY_WOW64_64KEY failed (err=%d)\n", ret);

    bRet = AllocateAndInitializeSid(&sid_authority, 1, SECURITY_WORLD_RID,
                                    0, 0, 0, 0, 0, 0, 0, &world_sid);
    ok(bRet == TRUE,
       "Expected AllocateAndInitializeSid to return TRUE, got %d, last error %u\n", bRet, GetLastError());

    access.grfAccessPermissions = GENERIC_ALL | STANDARD_RIGHTS_ALL;
    access.grfAccessMode = SET_ACCESS;
    access.grfInheritance = SUB_CONTAINERS_AND_OBJECTS_INHERIT;
    access.Trustee.pMultipleTrustee = ((void*)0);
    access.Trustee.MultipleTrusteeOperation = NO_MULTIPLE_TRUSTEE;
    access.Trustee.TrusteeForm = TRUSTEE_IS_SID;
    access.Trustee.TrusteeType = TRUSTEE_IS_WELL_KNOWN_GROUP;
    access.Trustee.ptstrName = (char *)world_sid;

    dwRet = SetEntriesInAclA(1, &access, ((void*)0), &key_acl);
    ok(dwRet == ERROR_SUCCESS,
       "Expected SetEntriesInAclA to return ERROR_SUCCESS, got %u, last error %u\n", dwRet, GetLastError());

    sd = HeapAlloc(GetProcessHeap(), 0, SECURITY_DESCRIPTOR_MIN_LENGTH);
    bRet = InitializeSecurityDescriptor(sd, SECURITY_DESCRIPTOR_REVISION);
    ok(bRet == TRUE,
       "Expected InitializeSecurityDescriptor to return TRUE, got %d, last error %u\n", bRet, GetLastError());

    bRet = SetSecurityDescriptorDacl(sd, TRUE, key_acl, FALSE);
    ok(bRet == TRUE,
       "Expected SetSecurityDescriptorDacl to return TRUE, got %d, last error %u\n", bRet, GetLastError());

    if (limited_user)
    {
        skip("not enough privileges to modify HKLM\n");
    }
    else
    {
        ret = RegSetKeySecurity(hkRoot64, DACL_SECURITY_INFORMATION, sd);
        ok(ret == ERROR_SUCCESS,
           "Expected RegSetKeySecurity to return success, got error %u\n", ret);

        ret = RegSetKeySecurity(hkRoot32, DACL_SECURITY_INFORMATION, sd);
        ok(ret == ERROR_SUCCESS,
           "Expected RegSetKeySecurity to return success, got error %u\n", ret);

        hkey1 = ((void*)0);
        ret = RegCreateKeyExA(HKEY_LOCAL_MACHINE, "Software\\Wine", 0, ((void*)0), 0,
                              KEY_WOW64_64KEY | KEY_READ, ((void*)0), &hkey1, ((void*)0));
        ok(ret == ERROR_SUCCESS && hkey1 != ((void*)0),
           "RegOpenKeyEx with KEY_WOW64_64KEY failed (err=%u)\n", ret);
        RegCloseKey(hkey1);

        hkey1 = ((void*)0);
        ret = RegCreateKeyExA(HKEY_LOCAL_MACHINE, "Software\\Wine", 0, ((void*)0), 0,
                              KEY_WOW64_32KEY | KEY_READ, ((void*)0), &hkey1, ((void*)0));
        ok(ret == ERROR_SUCCESS && hkey1 != ((void*)0),
           "RegOpenKeyEx with KEY_WOW64_32KEY failed (err=%u)\n", ret);
        RegCloseKey(hkey1);
    }

    HeapFree(GetProcessHeap(), 0, sd);
    LocalFree(key_acl);
    FreeSid(world_sid);
    RegDeleteKeyA(hkRoot64, "");
    RegCloseKey(hkRoot64);
    RegDeleteKeyA(hkRoot32, "");
    RegCloseKey(hkRoot32);
}
