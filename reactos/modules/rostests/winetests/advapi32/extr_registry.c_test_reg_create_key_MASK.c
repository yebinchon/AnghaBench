#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* ptstrName; int /*<<< orphan*/  TrusteeType; int /*<<< orphan*/  TrusteeForm; int /*<<< orphan*/  MultipleTrusteeOperation; int /*<<< orphan*/ * pMultipleTrustee; } ;
struct TYPE_8__ {int grfAccessPermissions; TYPE_1__ Trustee; int /*<<< orphan*/  grfInheritance; int /*<<< orphan*/  grfAccessMode; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ SID_IDENTIFIER_AUTHORITY ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  scalar_t__ PSID ;
typedef  int /*<<< orphan*/  PACL ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  TYPE_3__ EXPLICIT_ACCESSA ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  DACL_SECURITY_INFORMATION ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_BAD_PATHNAME ; 
 scalar_t__ ERROR_CHILD_MUST_BE_VOLATILE ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int GENERIC_ALL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int KEY_ALL_ACCESS ; 
 int KEY_NOTIFY ; 
 int KEY_READ ; 
 int KEY_SET_VALUE ; 
 int KEY_WOW64_32KEY ; 
 int KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_MULTIPLE_TRUSTEE ; 
 int /*<<< orphan*/  REG_OPTION_VOLATILE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_MIN_LENGTH ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 int /*<<< orphan*/  SECURITY_WORLD_RID ; 
 int /*<<< orphan*/  SECURITY_WORLD_SID_AUTHORITY ; 
 int /*<<< orphan*/  SET_ACCESS ; 
 int STANDARD_RIGHTS_ALL ; 
 int /*<<< orphan*/  SUB_CONTAINERS_AND_OBJECTS_INHERIT ; 
 scalar_t__ FUNC13 (int,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TRUSTEE_IS_SID ; 
 int /*<<< orphan*/  TRUSTEE_IS_WELL_KNOWN_GROUP ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/ * hkey_main ; 
 scalar_t__ limited_user ; 
 int /*<<< orphan*/  FUNC16 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  pIsWow64Process ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void FUNC19(void)
{
    LONG ret;
    HKEY hkey1, hkey2;
    HKEY hkRoot64 = NULL;
    HKEY hkRoot32 = NULL;
    DWORD dwRet;
    BOOL bRet;
    SID_IDENTIFIER_AUTHORITY sid_authority = {SECURITY_WORLD_SID_AUTHORITY};
    PSID world_sid;
    EXPLICIT_ACCESSA access;
    PACL key_acl;
    SECURITY_DESCRIPTOR *sd;

    ret = FUNC10(hkey_main, "Subkey1", 0, NULL, 0, KEY_NOTIFY, NULL, &hkey1, NULL);
    FUNC16(!ret, "RegCreateKeyExA failed with error %d\n", ret);
    /* should succeed: all versions of Windows ignore the access rights
     * to the parent handle */
    ret = FUNC10(hkey1, "Subkey2", 0, NULL, 0, KEY_SET_VALUE, NULL, &hkey2, NULL);
    FUNC16(!ret, "RegCreateKeyExA failed with error %d\n", ret);

    /* clean up */
    FUNC11(hkey2, "");
    FUNC11(hkey1, "");
    FUNC9(hkey2);
    FUNC9(hkey1);

    /* test creation of volatile keys */
    ret = FUNC10(hkey_main, "Volatile", 0, NULL, REG_OPTION_VOLATILE, KEY_ALL_ACCESS, NULL, &hkey1, NULL);
    FUNC16(!ret, "RegCreateKeyExA failed with error %d\n", ret);
    ret = FUNC10(hkey1, "Subkey2", 0, NULL, 0, KEY_ALL_ACCESS, NULL, &hkey2, NULL);
    FUNC16(ret == ERROR_CHILD_MUST_BE_VOLATILE, "RegCreateKeyExA failed with error %d\n", ret);
    if (!ret) FUNC9( hkey2 );
    ret = FUNC10(hkey1, "Subkey2", 0, NULL, REG_OPTION_VOLATILE, KEY_ALL_ACCESS, NULL, &hkey2, NULL);
    FUNC16(!ret, "RegCreateKeyExA failed with error %d\n", ret);
    FUNC9(hkey2);
    /* should succeed if the key already exists */
    ret = FUNC10(hkey1, "Subkey2", 0, NULL, 0, KEY_ALL_ACCESS, NULL, &hkey2, NULL);
    FUNC16(!ret, "RegCreateKeyExA failed with error %d\n", ret);

    /* clean up */
    FUNC11(hkey2, "");
    FUNC11(hkey1, "");
    FUNC9(hkey2);
    FUNC9(hkey1);

    /*  beginning backslash character */
    ret = FUNC10(hkey_main, "\\Subkey3", 0, NULL, 0, KEY_NOTIFY, NULL, &hkey1, NULL);
    if (!(FUNC4() & 0x80000000))
        FUNC16(ret == ERROR_BAD_PATHNAME, "expected ERROR_BAD_PATHNAME, got %d\n", ret);
    else {
        FUNC16(!ret, "RegCreateKeyExA failed with error %d\n", ret);
        FUNC11(hkey1, "");
        FUNC9(hkey1);
    }

    /* trailing backslash characters */
    ret = FUNC10(hkey_main, "Subkey4\\\\", 0, NULL, 0, KEY_NOTIFY, NULL, &hkey1, NULL);
    FUNC16(ret == ERROR_SUCCESS, "RegCreateKeyExA failed with error %d\n", ret);
    FUNC11(hkey1, "");
    FUNC9(hkey1);

    /* System\CurrentControlSet\Control\Video should be non-volatile */
    ret = FUNC10(HKEY_LOCAL_MACHINE, "System\\CurrentControlSet\\Control\\Video\\Wine",
                          0, NULL, 0, KEY_NOTIFY, NULL, &hkey1, NULL);
    FUNC16(ret == ERROR_SUCCESS, "RegCreateKeyExA failed with error %d\n", ret);
    FUNC11(hkey1, "");
    FUNC9(hkey1);

    /* WOW64 flags - open an existing key */
    hkey1 = NULL;
    ret = FUNC10(HKEY_LOCAL_MACHINE, "Software", 0, NULL, 0, KEY_READ|KEY_WOW64_32KEY, NULL, &hkey1, NULL);
    FUNC16((ret == ERROR_SUCCESS && hkey1 != NULL) || FUNC15(ret == ERROR_ACCESS_DENIED /* NT4, win2k */),
        "RegOpenKeyEx with KEY_WOW64_32KEY failed (err=%u)\n", ret);
    FUNC9(hkey1);

    hkey1 = NULL;
    ret = FUNC10(HKEY_LOCAL_MACHINE, "Software", 0, NULL, 0, KEY_READ|KEY_WOW64_64KEY, NULL, &hkey1, NULL);
    FUNC16((ret == ERROR_SUCCESS && hkey1 != NULL) || FUNC15(ret == ERROR_ACCESS_DENIED /* NT4, win2k */),
        "RegOpenKeyEx with KEY_WOW64_64KEY failed (err=%u)\n", ret);
    FUNC9(hkey1);

    /* Try using WOW64 flags when opening a key with a DACL set to verify that
     * the registry access check is performed correctly. Redirection isn't
     * being tested, so the tests don't care about whether the process is
     * running under WOW64. */
    if (!pIsWow64Process)
    {
        FUNC18("WOW64 flags are not recognized\n");
        return;
    }

    ret = FUNC10(HKEY_LOCAL_MACHINE, "Software\\Wine", 0, NULL, 0,
                          KEY_WOW64_32KEY | KEY_ALL_ACCESS, NULL, &hkRoot32, NULL);
    if (limited_user)
        FUNC16(ret == ERROR_ACCESS_DENIED && hkRoot32 == NULL,
           "RegCreateKeyEx with KEY_WOW64_32KEY failed (err=%d)\n", ret);
    else
        FUNC16(ret == ERROR_SUCCESS && hkRoot32 != NULL,
           "RegCreateKeyEx with KEY_WOW64_32KEY failed (err=%d)\n", ret);

    ret = FUNC10(HKEY_LOCAL_MACHINE, "Software\\Wine", 0, NULL, 0,
                          KEY_WOW64_64KEY | KEY_ALL_ACCESS, NULL, &hkRoot64, NULL);
    if (limited_user)
        FUNC16(ret == ERROR_ACCESS_DENIED && hkRoot64 == NULL,
           "RegCreateKeyEx with KEY_WOW64_64KEY failed (err=%d)\n", ret);
    else
        FUNC16(ret == ERROR_SUCCESS && hkRoot64 != NULL,
           "RegCreateKeyEx with KEY_WOW64_64KEY failed (err=%d)\n", ret);

    bRet = FUNC0(&sid_authority, 1, SECURITY_WORLD_RID,
                                    0, 0, 0, 0, 0, 0, 0, &world_sid);
    FUNC16(bRet == TRUE,
       "Expected AllocateAndInitializeSid to return TRUE, got %d, last error %u\n", bRet, FUNC2());

    access.grfAccessPermissions = GENERIC_ALL | STANDARD_RIGHTS_ALL;
    access.grfAccessMode = SET_ACCESS;
    access.grfInheritance = SUB_CONTAINERS_AND_OBJECTS_INHERIT;
    access.Trustee.pMultipleTrustee = NULL;
    access.Trustee.MultipleTrusteeOperation = NO_MULTIPLE_TRUSTEE;
    access.Trustee.TrusteeForm = TRUSTEE_IS_SID;
    access.Trustee.TrusteeType = TRUSTEE_IS_WELL_KNOWN_GROUP;
    access.Trustee.ptstrName = (char *)world_sid;

    dwRet = FUNC13(1, &access, NULL, &key_acl);
    FUNC16(dwRet == ERROR_SUCCESS,
       "Expected SetEntriesInAclA to return ERROR_SUCCESS, got %u, last error %u\n", dwRet, FUNC2());

    sd = FUNC5(FUNC3(), 0, SECURITY_DESCRIPTOR_MIN_LENGTH);
    bRet = FUNC7(sd, SECURITY_DESCRIPTOR_REVISION);
    FUNC16(bRet == TRUE,
       "Expected InitializeSecurityDescriptor to return TRUE, got %d, last error %u\n", bRet, FUNC2());

    bRet = FUNC14(sd, TRUE, key_acl, FALSE);
    FUNC16(bRet == TRUE,
       "Expected SetSecurityDescriptorDacl to return TRUE, got %d, last error %u\n", bRet, FUNC2());

    if (limited_user)
    {
        FUNC17("not enough privileges to modify HKLM\n");
    }
    else
    {
        ret = FUNC12(hkRoot64, DACL_SECURITY_INFORMATION, sd);
        FUNC16(ret == ERROR_SUCCESS,
           "Expected RegSetKeySecurity to return success, got error %u\n", ret);

        ret = FUNC12(hkRoot32, DACL_SECURITY_INFORMATION, sd);
        FUNC16(ret == ERROR_SUCCESS,
           "Expected RegSetKeySecurity to return success, got error %u\n", ret);

        hkey1 = NULL;
        ret = FUNC10(HKEY_LOCAL_MACHINE, "Software\\Wine", 0, NULL, 0,
                              KEY_WOW64_64KEY | KEY_READ, NULL, &hkey1, NULL);
        FUNC16(ret == ERROR_SUCCESS && hkey1 != NULL,
           "RegOpenKeyEx with KEY_WOW64_64KEY failed (err=%u)\n", ret);
        FUNC9(hkey1);

        hkey1 = NULL;
        ret = FUNC10(HKEY_LOCAL_MACHINE, "Software\\Wine", 0, NULL, 0,
                              KEY_WOW64_32KEY | KEY_READ, NULL, &hkey1, NULL);
        FUNC16(ret == ERROR_SUCCESS && hkey1 != NULL,
           "RegOpenKeyEx with KEY_WOW64_32KEY failed (err=%u)\n", ret);
        FUNC9(hkey1);
    }

    FUNC6(FUNC3(), 0, sd);
    FUNC8(key_acl);
    FUNC1(world_sid);
    FUNC11(hkRoot64, "");
    FUNC9(hkRoot64);
    FUNC11(hkRoot32, "");
    FUNC9(hkRoot32);
}