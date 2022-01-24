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
typedef  int /*<<< orphan*/  type ;
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ TOKEN_ELEVATION_TYPE ;
typedef  TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_ADMINS ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_POWER_USERS ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SECURITY_BUILTIN_DOMAIN_RID ; 
 int /*<<< orphan*/  SECURITY_NT_AUTHORITY ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int TRUE ; 
 int /*<<< orphan*/  TokenElevationType ; 
 scalar_t__ TokenElevationTypeDefault ; 
 scalar_t__ TokenElevationTypeLimited ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static BOOL FUNC8(void)
{
    SID_IDENTIFIER_AUTHORITY NtAuthority = {SECURITY_NT_AUTHORITY};
    PSID Group = NULL;
    BOOL IsInGroup;
    HANDLE token;

    if (!&pCheckTokenMembership || !&pOpenProcessToken) return FALSE;

    if (!FUNC0(&NtAuthority, 2, SECURITY_BUILTIN_DOMAIN_RID,
                                  DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0, &Group) ||
        !FUNC5(NULL, Group, &IsInGroup))
    {
        FUNC7("Could not check if the current user is an administrator\n");
        FUNC2(Group);
        return FALSE;
    }
    FUNC2(Group);

    if (!IsInGroup)
    {
        if (!FUNC0(&NtAuthority, 2,
                                      SECURITY_BUILTIN_DOMAIN_RID,
                                      DOMAIN_ALIAS_RID_POWER_USERS,
                                      0, 0, 0, 0, 0, 0, &Group) ||
            !FUNC5(NULL, Group, &IsInGroup))
        {
            FUNC7("Could not check if the current user is a power user\n");
            return FALSE;
        }
        if (!IsInGroup)
        {
            /* Only administrators and power users can be powerful */
            return TRUE;
        }
    }

    if (FUNC6(FUNC3(), TOKEN_QUERY, &token))
    {
        BOOL ret;
        TOKEN_ELEVATION_TYPE type = TokenElevationTypeDefault;
        DWORD size;

        ret = FUNC4(token, TokenElevationType, &type, sizeof(type), &size);
        FUNC1(token);
        return (ret && type == TokenElevationTypeLimited);
    }
    return FALSE;
}