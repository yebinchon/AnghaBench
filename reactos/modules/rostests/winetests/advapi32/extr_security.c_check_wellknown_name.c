
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wk_sid ;
typedef char const* WELL_KNOWN_SID_TYPE ;
struct TYPE_3__ {int member_0; } ;
typedef char const* SID_NAME_USE ;
typedef TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef char* PSID ;
typedef char* LPSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int AllocateAndInitializeSid (TYPE_1__*,int,int ,int,int,int,int,int,int ,int ,char**) ;
 scalar_t__ ERROR_NONE_MAPPED ;
 int EqualSid (char*,char*) ;
 int FreeSid (char*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int LookupAccountNameA (int *,char const*,char*,scalar_t__*,char*,scalar_t__*,char const**) ;
 int SECURITY_MAX_SID_SIZE ;
 int SECURITY_NT_AUTHORITY ;
 int SECURITY_NT_NON_UNIQUE ;
 char const* SidTypeWellKnownGroup ;
 int debugstr_sid (char*) ;
 int get_sid_info (char*,char**,char**) ;
 int lstrcmpA (char*,char*) ;
 int ok (int,char*,...) ;
 int pCreateWellKnownSid (char const*,char*,char*,scalar_t__*) ;
 int win_skip (char*,char const*) ;

__attribute__((used)) static void check_wellknown_name(const char* name, WELL_KNOWN_SID_TYPE result)
{
    SID_IDENTIFIER_AUTHORITY ident = { SECURITY_NT_AUTHORITY };
    PSID domainsid = ((void*)0);
    char wk_sid[SECURITY_MAX_SID_SIZE];
    DWORD cb;

    DWORD sid_size, domain_size;
    SID_NAME_USE sid_use;
    LPSTR domain, account, sid_domain, wk_domain, wk_account;
    PSID psid;
    BOOL ret ,ret2;

    sid_size = 0;
    domain_size = 0;
    ret = LookupAccountNameA(((void*)0), name, ((void*)0), &sid_size, ((void*)0), &domain_size, &sid_use);
    ok(!ret, " %s Should have failed to lookup account name\n", name);
    psid = HeapAlloc(GetProcessHeap(),0,sid_size);
    domain = HeapAlloc(GetProcessHeap(),0,domain_size);
    ret = LookupAccountNameA(((void*)0), name, psid, &sid_size, domain, &domain_size, &sid_use);

    if (!result)
    {
        ok(!ret, " %s Should have failed to lookup account name\n",name);
        goto cleanup;
    }

    AllocateAndInitializeSid(&ident, 6, SECURITY_NT_NON_UNIQUE, 12, 23, 34, 45, 56, 0, 0, &domainsid);
    cb = sizeof(wk_sid);
    if (!pCreateWellKnownSid(result, domainsid, wk_sid, &cb))
    {
        win_skip("SID %i is not available on the system\n",result);
        goto cleanup;
    }

    ret2 = get_sid_info(wk_sid, &wk_account, &wk_domain);
    if (!ret2 && GetLastError() == ERROR_NONE_MAPPED)
    {
        win_skip("CreateWellKnownSid() succeeded but the account '%s' is not present (W2K)\n", name);
        goto cleanup;
    }

    get_sid_info(psid, &account, &sid_domain);

    ok(ret, "Failed to lookup account name %s\n",name);
    ok(sid_size != 0, "sid_size was zero\n");

    ok(EqualSid(psid,wk_sid),"%s Sid %s fails to match well known sid %s!\n",
       name, debugstr_sid(psid), debugstr_sid(wk_sid));

    ok(!lstrcmpA(account, wk_account), "Expected %s , got %s\n", account, wk_account);
    ok(!lstrcmpA(domain, wk_domain), "Expected %s, got %s\n", wk_domain, domain);
    ok(sid_use == SidTypeWellKnownGroup , "Expected Use (5), got %d\n", sid_use);

cleanup:
    FreeSid(domainsid);
    HeapFree(GetProcessHeap(),0,psid);
    HeapFree(GetProcessHeap(),0,domain);
}
