#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/ ************ Sid; } ;
struct TYPE_6__ {TYPE_1__ User; } ;
typedef  TYPE_2__ TOKEN_USER ;
typedef  TYPE_3__ SID_IDENTIFIER_AUTHORITY ;
typedef  int /*<<< orphan*/ ******** PSID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_INVALID_SID ; 
 int /*<<< orphan*/  ERROR_NO_TOKEN ; 
 int FUNC1 (int /*<<< orphan*/ ********,int /*<<< orphan*/ ********) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ********,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ********,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SECURITY_MAX_SID_SIZE ; 
 int /*<<< orphan*/  SECURITY_NT_AUTHORITY ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  TOKEN_READ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TokenUser ; 
 int FUNC15 (int /*<<< orphan*/ ********) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ********,int /*<<< orphan*/ ********,int*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void FUNC19(void)
{
    char *user, buffer1[SECURITY_MAX_SID_SIZE], buffer2[SECURITY_MAX_SID_SIZE];
    SID_IDENTIFIER_AUTHORITY domain_ident = { SECURITY_NT_AUTHORITY };
    PSID domain_sid = *(PSID *)&buffer1;
    PSID domain_sid2 = *(PSID *)&buffer2;
    DWORD sid_size;
    PSID user_sid;
    HANDLE token;
    BOOL bret = TRUE;
    int i;

    if (!&pGetWindowsAccountDomainSid)
    {
        FUNC18("GetWindowsAccountDomainSid not available\n");
        return;
    }

    if (!FUNC13(FUNC3(), TOKEN_READ, TRUE, &token))
    {
        if (FUNC4() != ERROR_NO_TOKEN) bret = FALSE;
        else if (!FUNC12(FUNC2(), TOKEN_READ, &token)) bret = FALSE;
    }
    if (!bret)
    {
        FUNC18("Failed to get current user token\n");
        return;
    }

    bret = FUNC8(token, TokenUser, NULL, 0, &sid_size);
    FUNC16(!bret && FUNC4() == ERROR_INSUFFICIENT_BUFFER,
       "GetTokenInformation(TokenUser) failed with error %d\n", FUNC4());
    user = FUNC9(FUNC5(), 0, sid_size);
    bret = FUNC8(token, TokenUser, user, sid_size, &sid_size);
    FUNC16(bret, "GetTokenInformation(TokenUser) failed with error %d\n", FUNC4());
    FUNC0(token);
    user_sid = ((TOKEN_USER *)user)->User.Sid;

    FUNC14(0xdeadbeef);
    bret = FUNC17(0, 0, 0);
    FUNC16(!bret, "GetWindowsAccountDomainSid succeeded\n");
    FUNC16(FUNC4() == ERROR_INVALID_SID, "expected ERROR_INVALID_SID, got %d\n", FUNC4());

    FUNC14(0xdeadbeef);
    bret = FUNC17(user_sid, 0, 0);
    FUNC16(!bret, "GetWindowsAccountDomainSid succeeded\n");
    FUNC16(FUNC4() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC4());

    sid_size = SECURITY_MAX_SID_SIZE;
    FUNC14(0xdeadbeef);
    bret = FUNC17(user_sid, 0, &sid_size);
    FUNC16(!bret, "GetWindowsAccountDomainSid succeeded\n");
    FUNC16(FUNC4() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC4());
    FUNC16(sid_size == FUNC6(4), "expected size %d, got %d\n", FUNC6(4), sid_size);

    FUNC14(0xdeadbeef);
    bret = FUNC17(user_sid, domain_sid, 0);
    FUNC16(!bret, "GetWindowsAccountDomainSid succeeded\n");
    FUNC16(FUNC4() == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC4());

    sid_size = 1;
    FUNC14(0xdeadbeef);
    bret = FUNC17(user_sid, domain_sid, &sid_size);
    FUNC16(!bret, "GetWindowsAccountDomainSid succeeded\n");
    FUNC16(FUNC4() == ERROR_INSUFFICIENT_BUFFER, "expected ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC4());
    FUNC16(sid_size == FUNC6(4), "expected size %d, got %d\n", FUNC6(4), sid_size);

    sid_size = SECURITY_MAX_SID_SIZE;
    bret = FUNC17(user_sid, domain_sid, &sid_size);
    FUNC16(bret, "GetWindowsAccountDomainSid failed with error %d\n", FUNC4());
    FUNC16(sid_size == FUNC6(4), "expected size %d, got %d\n", FUNC6(4), sid_size);
    FUNC11(domain_sid2, &domain_ident, 4);
    for (i = 0; i < 4; i++)
        *FUNC7(domain_sid2, i) = *FUNC7(user_sid, i);
    FUNC16(FUNC1(domain_sid, domain_sid2), "unexpected domain sid %s != %s\n",
       FUNC15(domain_sid), FUNC15(domain_sid2));

    FUNC10(FUNC5(), 0, user);
}