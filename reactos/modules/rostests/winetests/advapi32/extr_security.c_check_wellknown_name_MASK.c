#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wk_sid ;
typedef  char const* WELL_KNOWN_SID_TYPE ;
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  char const* SID_NAME_USE ;
typedef  TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef  char* PSID ;
typedef  char* LPSTR ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ ERROR_NONE_MAPPED ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char*,scalar_t__*,char*,scalar_t__*,char const**) ; 
 int SECURITY_MAX_SID_SIZE ; 
 int /*<<< orphan*/  SECURITY_NT_AUTHORITY ; 
 int /*<<< orphan*/  SECURITY_NT_NON_UNIQUE ; 
 char const* SidTypeWellKnownGroup ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 

__attribute__((used)) static void FUNC14(const char* name, WELL_KNOWN_SID_TYPE result)
{
    SID_IDENTIFIER_AUTHORITY ident = { SECURITY_NT_AUTHORITY };
    PSID domainsid = NULL;
    char wk_sid[SECURITY_MAX_SID_SIZE];
    DWORD cb;

    DWORD sid_size, domain_size;
    SID_NAME_USE sid_use;
    LPSTR domain, account, sid_domain, wk_domain, wk_account;
    PSID psid;
    BOOL ret ,ret2;

    sid_size = 0;
    domain_size = 0;
    ret = FUNC7(NULL, name, NULL, &sid_size, NULL, &domain_size, &sid_use);
    FUNC11(!ret, " %s Should have failed to lookup account name\n", name);
    psid = FUNC5(FUNC4(),0,sid_size);
    domain = FUNC5(FUNC4(),0,domain_size);
    ret = FUNC7(NULL, name, psid, &sid_size, domain, &domain_size, &sid_use);

    if (!result)
    {
        FUNC11(!ret, " %s Should have failed to lookup account name\n",name);
        goto cleanup;
    }

    FUNC0(&ident, 6, SECURITY_NT_NON_UNIQUE, 12, 23, 34, 45, 56, 0, 0, &domainsid);
    cb = sizeof(wk_sid);
    if (!FUNC12(result, domainsid, wk_sid, &cb))
    {
        FUNC13("SID %i is not available on the system\n",result);
        goto cleanup;
    }

    ret2 = FUNC9(wk_sid, &wk_account, &wk_domain);
    if (!ret2 && FUNC3() == ERROR_NONE_MAPPED)
    {
        FUNC13("CreateWellKnownSid() succeeded but the account '%s' is not present (W2K)\n", name);
        goto cleanup;
    }

    FUNC9(psid, &account, &sid_domain);

    FUNC11(ret, "Failed to lookup account name %s\n",name);
    FUNC11(sid_size != 0, "sid_size was zero\n");

    FUNC11(FUNC1(psid,wk_sid),"%s Sid %s fails to match well known sid %s!\n",
       name, FUNC8(psid), FUNC8(wk_sid));

    FUNC11(!FUNC10(account, wk_account), "Expected %s , got %s\n", account, wk_account);
    FUNC11(!FUNC10(domain, wk_domain), "Expected %s, got %s\n", wk_domain, domain);
    FUNC11(sid_use == SidTypeWellKnownGroup , "Expected Use (5), got %d\n", sid_use);

cleanup:
    FUNC2(domainsid);
    FUNC6(FUNC4(),0,psid);
    FUNC6(FUNC4(),0,domain);
}