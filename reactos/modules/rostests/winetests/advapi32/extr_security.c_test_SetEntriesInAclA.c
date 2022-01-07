
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* ptstrName; void* TrusteeForm; void* MultipleTrusteeOperation; int * pMultipleTrustee; int TrusteeType; } ;
struct TYPE_8__ {TYPE_1__ Trustee; int grfAccessMode; int grfInheritance; int grfAccessPermissions; } ;
struct TYPE_7__ {int member_0; } ;
typedef TYPE_2__ SID_IDENTIFIER_AUTHORITY ;
typedef void* PSID ;
typedef int * PACL ;
typedef void* LPSTR ;
typedef TYPE_3__ EXPLICIT_ACCESSA ;
typedef int DWORD ;
typedef char CHAR ;


 int ACL_REVISION ;
 int AddAccessAllowedAce (int *,int ,int ,void*) ;
 int AllocateAndInitializeSid (TYPE_2__*,int,int ,int ,int ,int ,int ,int ,int ,int ,void**) ;
 int DOMAIN_ALIAS_RID_USERS ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_NOT_SUPPORTED ;
 int ERROR_SUCCESS ;
 int FreeSid (void*) ;
 int GRANT_ACCESS ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int GetSystemDefaultLangID () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int InitializeAcl (int *,int,int ) ;
 int KEY_READ ;
 int KEY_WRITE ;
 scalar_t__ LANG_ENGLISH ;
 int LocalFree (int *) ;
 int NO_INHERITANCE ;
 void* NO_MULTIPLE_TRUSTEE ;
 scalar_t__ PRIMARYLANGID (int ) ;
 int REVOKE_ACCESS ;
 int SECURITY_BUILTIN_DOMAIN_RID ;
 int SECURITY_NT_AUTHORITY ;
 int SECURITY_WORLD_RID ;
 int SECURITY_WORLD_SID_AUTHORITY ;
 int SET_ACCESS ;
 void* TRUSTEE_BAD_FORM ;
 void* TRUSTEE_IS_IMPERSONATE ;
 void* TRUSTEE_IS_NAME ;
 void* TRUSTEE_IS_SID ;
 int TRUSTEE_IS_UNKNOWN ;
 int TRUSTEE_IS_WELL_KNOWN_GROUP ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int pSetEntriesInAclA (int,TYPE_3__*,int *,int **) ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SetEntriesInAclA(void)
{
    DWORD res;
    PSID EveryoneSid = ((void*)0), UsersSid = ((void*)0);
    PACL OldAcl = ((void*)0), NewAcl;
    SID_IDENTIFIER_AUTHORITY SIDAuthWorld = { SECURITY_WORLD_SID_AUTHORITY };
    SID_IDENTIFIER_AUTHORITY SIDAuthNT = { SECURITY_NT_AUTHORITY };
    EXPLICIT_ACCESSA ExplicitAccess;
    static const CHAR szEveryone[] = {'E','v','e','r','y','o','n','e',0};
    static const CHAR szCurrentUser[] = { 'C','U','R','R','E','N','T','_','U','S','E','R','\0'};

    if (!pSetEntriesInAclA)
    {
        win_skip("SetEntriesInAclA is not available\n");
        return;
    }

    NewAcl = (PACL)0xdeadbeef;
    res = pSetEntriesInAclA(0, ((void*)0), ((void*)0), &NewAcl);
    if(res == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("SetEntriesInAclA is not implemented\n");
        return;
    }
    ok(res == ERROR_SUCCESS, "SetEntriesInAclA failed: %u\n", res);
    ok(NewAcl == ((void*)0) ||
        broken(NewAcl != ((void*)0)),
        "NewAcl=%p, expected NULL\n", NewAcl);
    LocalFree(NewAcl);

    OldAcl = HeapAlloc(GetProcessHeap(), 0, 256);
    res = InitializeAcl(OldAcl, 256, ACL_REVISION);
    if(!res && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("ACLs not implemented - skipping tests\n");
        HeapFree(GetProcessHeap(), 0, OldAcl);
        return;
    }
    ok(res, "InitializeAcl failed with error %d\n", GetLastError());

    res = AllocateAndInitializeSid( &SIDAuthWorld, 1, SECURITY_WORLD_RID, 0, 0, 0, 0, 0, 0, 0, &EveryoneSid);
    ok(res, "AllocateAndInitializeSid failed with error %d\n", GetLastError());

    res = AllocateAndInitializeSid( &SIDAuthNT, 2, SECURITY_BUILTIN_DOMAIN_RID,
        DOMAIN_ALIAS_RID_USERS, 0, 0, 0, 0, 0, 0, &UsersSid);
    ok(res, "AllocateAndInitializeSid failed with error %d\n", GetLastError());

    res = AddAccessAllowedAce(OldAcl, ACL_REVISION, KEY_READ, UsersSid);
    ok(res, "AddAccessAllowedAce failed with error %d\n", GetLastError());

    ExplicitAccess.grfAccessPermissions = KEY_WRITE;
    ExplicitAccess.grfAccessMode = GRANT_ACCESS;
    ExplicitAccess.grfInheritance = NO_INHERITANCE;
    ExplicitAccess.Trustee.TrusteeType = TRUSTEE_IS_WELL_KNOWN_GROUP;
    ExplicitAccess.Trustee.TrusteeForm = TRUSTEE_IS_SID;
    ExplicitAccess.Trustee.ptstrName = EveryoneSid;
    ExplicitAccess.Trustee.MultipleTrusteeOperation = NO_MULTIPLE_TRUSTEE;
    ExplicitAccess.Trustee.pMultipleTrustee = ((void*)0);
    res = pSetEntriesInAclA(1, &ExplicitAccess, OldAcl, &NewAcl);
    ok(res == ERROR_SUCCESS, "SetEntriesInAclA failed: %u\n", res);
    ok(NewAcl != ((void*)0), "returned acl was NULL\n");
    LocalFree(NewAcl);

    ExplicitAccess.Trustee.TrusteeType = TRUSTEE_IS_UNKNOWN;
    ExplicitAccess.Trustee.pMultipleTrustee = ((void*)0);
    ExplicitAccess.Trustee.MultipleTrusteeOperation = NO_MULTIPLE_TRUSTEE;
    res = pSetEntriesInAclA(1, &ExplicitAccess, OldAcl, &NewAcl);
    ok(res == ERROR_SUCCESS, "SetEntriesInAclA failed: %u\n", res);
    ok(NewAcl != ((void*)0), "returned acl was NULL\n");
    LocalFree(NewAcl);

    if (PRIMARYLANGID(GetSystemDefaultLangID()) != LANG_ENGLISH)
    {
        skip("Non-English locale (test with hardcoded 'Everyone')\n");
    }
    else
    {
        ExplicitAccess.Trustee.TrusteeForm = TRUSTEE_IS_NAME;
        ExplicitAccess.Trustee.ptstrName = (LPSTR)szEveryone;
        res = pSetEntriesInAclA(1, &ExplicitAccess, OldAcl, &NewAcl);
        ok(res == ERROR_SUCCESS, "SetEntriesInAclA failed: %u\n", res);
        ok(NewAcl != ((void*)0), "returned acl was NULL\n");
        LocalFree(NewAcl);

        ExplicitAccess.Trustee.TrusteeForm = TRUSTEE_BAD_FORM;
        res = pSetEntriesInAclA(1, &ExplicitAccess, OldAcl, &NewAcl);
        ok(res == ERROR_INVALID_PARAMETER ||
            broken(res == ERROR_NOT_SUPPORTED),
            "SetEntriesInAclA failed: %u\n", res);
        ok(NewAcl == ((void*)0) ||
            broken(NewAcl != ((void*)0)),
            "returned acl wasn't NULL: %p\n", NewAcl);

        ExplicitAccess.Trustee.TrusteeForm = TRUSTEE_IS_NAME;
        ExplicitAccess.Trustee.MultipleTrusteeOperation = TRUSTEE_IS_IMPERSONATE;
        res = pSetEntriesInAclA(1, &ExplicitAccess, OldAcl, &NewAcl);
        ok(res == ERROR_INVALID_PARAMETER ||
            broken(res == ERROR_NOT_SUPPORTED),
            "SetEntriesInAclA failed: %u\n", res);
        ok(NewAcl == ((void*)0) ||
            broken(NewAcl != ((void*)0)),
            "returned acl wasn't NULL: %p\n", NewAcl);

        ExplicitAccess.Trustee.MultipleTrusteeOperation = NO_MULTIPLE_TRUSTEE;
        ExplicitAccess.grfAccessMode = SET_ACCESS;
        res = pSetEntriesInAclA(1, &ExplicitAccess, OldAcl, &NewAcl);
        ok(res == ERROR_SUCCESS, "SetEntriesInAclA failed: %u\n", res);
        ok(NewAcl != ((void*)0), "returned acl was NULL\n");
        LocalFree(NewAcl);
    }

    ExplicitAccess.Trustee.TrusteeForm = TRUSTEE_IS_NAME;
    ExplicitAccess.Trustee.ptstrName = (LPSTR)szCurrentUser;
    res = pSetEntriesInAclA(1, &ExplicitAccess, OldAcl, &NewAcl);
    ok(res == ERROR_SUCCESS, "SetEntriesInAclA failed: %u\n", res);
    ok(NewAcl != ((void*)0), "returned acl was NULL\n");
    LocalFree(NewAcl);

    ExplicitAccess.grfAccessMode = REVOKE_ACCESS;
    ExplicitAccess.Trustee.TrusteeForm = TRUSTEE_IS_SID;
    ExplicitAccess.Trustee.ptstrName = UsersSid;
    res = pSetEntriesInAclA(1, &ExplicitAccess, OldAcl, &NewAcl);
    ok(res == ERROR_SUCCESS, "SetEntriesInAclA failed: %u\n", res);
    ok(NewAcl != ((void*)0), "returned acl was NULL\n");
    LocalFree(NewAcl);

    FreeSid(UsersSid);
    FreeSid(EveryoneSid);
    HeapFree(GetProcessHeap(), 0, OldAcl);
}
