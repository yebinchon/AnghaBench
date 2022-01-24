#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_6__ {int Attributes; int /*<<< orphan*/  Sid; } ;
typedef  TYPE_2__* PTOKEN_GROUPS ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  size_t DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  ERROR_NO_IMPERSONATION_TOKEN ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,size_t,size_t*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int SE_GROUP_ENABLED ; 
 int /*<<< orphan*/  SecurityImpersonation ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int TOKEN_DUPLICATE ; 
 int TOKEN_QUERY ; 
 int TRUE ; 
 int /*<<< orphan*/  TokenGroups ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    PTOKEN_GROUPS token_groups;
    DWORD size;
    HANDLE process_token, token;
    BOOL is_member;
    BOOL ret;
    DWORD i;

    if (!&pCheckTokenMembership)
    {
        FUNC13("CheckTokenMembership is not available\n");
        return;
    }
    ret = FUNC8(FUNC2(), TOKEN_DUPLICATE|TOKEN_QUERY, &process_token);
    FUNC10(ret, "OpenProcessToken failed with error %d\n", FUNC3());

    ret = FUNC1(process_token, SecurityImpersonation, &token);
    FUNC10(ret, "DuplicateToken failed with error %d\n", FUNC3());

    /* groups */
    ret = FUNC5(token, TokenGroups, NULL, 0, &size);
    FUNC10(!ret && FUNC3() == ERROR_INSUFFICIENT_BUFFER,
        "GetTokenInformation(TokenGroups) %s with error %d\n",
        ret ? "succeeded" : "failed", FUNC3());
    token_groups = FUNC6(FUNC4(), 0, size);
    ret = FUNC5(token, TokenGroups, token_groups, size, &size);
    FUNC10(ret, "GetTokenInformation(TokenGroups) failed with error %d\n", FUNC3());

    for (i = 0; i < token_groups->GroupCount; i++)
    {
        if (token_groups->Groups[i].Attributes & SE_GROUP_ENABLED)
            break;
    }

    if (i == token_groups->GroupCount)
    {
        FUNC7(FUNC4(), 0, token_groups);
        FUNC0(token);
        FUNC12("user not a member of any group\n");
        return;
    }

    is_member = FALSE;
    ret = FUNC11(token, token_groups->Groups[i].Sid, &is_member);
    FUNC10(ret, "CheckTokenMembership failed with error %d\n", FUNC3());
    FUNC10(is_member, "CheckTokenMembership should have detected sid as member\n");

    is_member = FALSE;
    ret = FUNC11(NULL, token_groups->Groups[i].Sid, &is_member);
    FUNC10(ret, "CheckTokenMembership failed with error %d\n", FUNC3());
    FUNC10(is_member, "CheckTokenMembership should have detected sid as member\n");

    is_member = TRUE;
    FUNC9(0xdeadbeef);
    ret = FUNC11(process_token, token_groups->Groups[i].Sid, &is_member);
    FUNC10(!ret && FUNC3() == ERROR_NO_IMPERSONATION_TOKEN,
        "CheckTokenMembership with process token %s with error %d\n",
        ret ? "succeeded" : "failed", FUNC3());
    FUNC10(!is_member, "CheckTokenMembership should have cleared is_member\n");

    FUNC7(FUNC4(), 0, token_groups);
    FUNC0(token);
    FUNC0(process_token);
}