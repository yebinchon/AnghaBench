
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int member_0; } ;
struct TYPE_5__ {int ************ Sid; } ;
struct TYPE_6__ {TYPE_1__ User; } ;
typedef TYPE_2__ TOKEN_USER ;
typedef TYPE_3__ SID_IDENTIFIER_AUTHORITY ;
typedef int ******** PSID ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_INVALID_SID ;
 int ERROR_NO_TOKEN ;
 int EqualSid (int ********,int ********) ;
 int FALSE ;
 int GetCurrentProcess () ;
 int GetCurrentThread () ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int GetSidLengthRequired (int) ;
 int * GetSidSubAuthority (int ********,int) ;
 int GetTokenInformation (int ,int ,char*,int,int*) ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int InitializeSid (int ********,TYPE_3__*,int) ;
 int OpenProcessToken (int ,int ,int *) ;
 int OpenThreadToken (int ,int ,int ,int *) ;
 int SECURITY_MAX_SID_SIZE ;
 int SECURITY_NT_AUTHORITY ;
 int SetLastError (int) ;
 int TOKEN_READ ;
 int TRUE ;
 int TokenUser ;
 int debugstr_sid (int ********) ;
 int ok (int,char*,...) ;
 int pGetWindowsAccountDomainSid (int ********,int ********,int*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetWindowsAccountDomainSid(void)
{
    char *user, buffer1[SECURITY_MAX_SID_SIZE], buffer2[SECURITY_MAX_SID_SIZE];
    SID_IDENTIFIER_AUTHORITY domain_ident = { SECURITY_NT_AUTHORITY };
    PSID domain_sid = (PSID *)&buffer1;
    PSID domain_sid2 = (PSID *)&buffer2;
    DWORD sid_size;
    PSID user_sid;
    HANDLE token;
    BOOL bret = TRUE;
    int i;

    if (!pGetWindowsAccountDomainSid)
    {
        win_skip("GetWindowsAccountDomainSid not available\n");
        return;
    }

    if (!OpenThreadToken(GetCurrentThread(), TOKEN_READ, TRUE, &token))
    {
        if (GetLastError() != ERROR_NO_TOKEN) bret = FALSE;
        else if (!OpenProcessToken(GetCurrentProcess(), TOKEN_READ, &token)) bret = FALSE;
    }
    if (!bret)
    {
        win_skip("Failed to get current user token\n");
        return;
    }

    bret = GetTokenInformation(token, TokenUser, ((void*)0), 0, &sid_size);
    ok(!bret && GetLastError() == ERROR_INSUFFICIENT_BUFFER,
       "GetTokenInformation(TokenUser) failed with error %d\n", GetLastError());
    user = HeapAlloc(GetProcessHeap(), 0, sid_size);
    bret = GetTokenInformation(token, TokenUser, user, sid_size, &sid_size);
    ok(bret, "GetTokenInformation(TokenUser) failed with error %d\n", GetLastError());
    CloseHandle(token);
    user_sid = ((TOKEN_USER *)user)->User.Sid;

    SetLastError(0xdeadbeef);
    bret = pGetWindowsAccountDomainSid(0, 0, 0);
    ok(!bret, "GetWindowsAccountDomainSid succeeded\n");
    ok(GetLastError() == ERROR_INVALID_SID, "expected ERROR_INVALID_SID, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    bret = pGetWindowsAccountDomainSid(user_sid, 0, 0);
    ok(!bret, "GetWindowsAccountDomainSid succeeded\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    sid_size = SECURITY_MAX_SID_SIZE;
    SetLastError(0xdeadbeef);
    bret = pGetWindowsAccountDomainSid(user_sid, 0, &sid_size);
    ok(!bret, "GetWindowsAccountDomainSid succeeded\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    ok(sid_size == GetSidLengthRequired(4), "expected size %d, got %d\n", GetSidLengthRequired(4), sid_size);

    SetLastError(0xdeadbeef);
    bret = pGetWindowsAccountDomainSid(user_sid, domain_sid, 0);
    ok(!bret, "GetWindowsAccountDomainSid succeeded\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    sid_size = 1;
    SetLastError(0xdeadbeef);
    bret = pGetWindowsAccountDomainSid(user_sid, domain_sid, &sid_size);
    ok(!bret, "GetWindowsAccountDomainSid succeeded\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    ok(sid_size == GetSidLengthRequired(4), "expected size %d, got %d\n", GetSidLengthRequired(4), sid_size);

    sid_size = SECURITY_MAX_SID_SIZE;
    bret = pGetWindowsAccountDomainSid(user_sid, domain_sid, &sid_size);
    ok(bret, "GetWindowsAccountDomainSid failed with error %d\n", GetLastError());
    ok(sid_size == GetSidLengthRequired(4), "expected size %d, got %d\n", GetSidLengthRequired(4), sid_size);
    InitializeSid(domain_sid2, &domain_ident, 4);
    for (i = 0; i < 4; i++)
        *GetSidSubAuthority(domain_sid2, i) = *GetSidSubAuthority(user_sid, i);
    ok(EqualSid(domain_sid, domain_sid2), "unexpected domain sid %s != %s\n",
       debugstr_sid(domain_sid), debugstr_sid(domain_sid2));

    HeapFree(GetProcessHeap(), 0, user);
}
