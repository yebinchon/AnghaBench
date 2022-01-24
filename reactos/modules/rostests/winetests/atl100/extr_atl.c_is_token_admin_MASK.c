#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  Sid; } ;
typedef  TYPE_2__ SID_IDENTIFIER_AUTHORITY ;
typedef  TYPE_3__* PTOKEN_GROUPS ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_ADMINS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,size_t,size_t*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  SECURITY_BUILTIN_DOMAIN_RID ; 
 int /*<<< orphan*/  SECURITY_NT_AUTHORITY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TokenGroups ; 

__attribute__((used)) static BOOL FUNC7(HANDLE token)
{
    PSID administrators = NULL;
    SID_IDENTIFIER_AUTHORITY nt_authority = { SECURITY_NT_AUTHORITY };
    DWORD groups_size;
    PTOKEN_GROUPS groups;
    DWORD group_index;

    /* Create a well-known SID for the Administrators group. */
    if (! FUNC0(&nt_authority, 2, SECURITY_BUILTIN_DOMAIN_RID,
                                   DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0,
                                   &administrators))
        return FALSE;

    /* Get the group info from the token */
    groups_size = 0;
    FUNC4(token, TokenGroups, NULL, 0, &groups_size);
    groups = FUNC5(FUNC3(), 0, groups_size);
    if (groups == NULL)
    {
        FUNC2(administrators);
        return FALSE;
    }
    if (! FUNC4(token, TokenGroups, groups, groups_size, &groups_size))
    {
        FUNC6(FUNC3(), 0, groups);
        FUNC2(administrators);
        return FALSE;
    }

    /* Now check if the token groups include the Administrators group */
    for (group_index = 0; group_index < groups->GroupCount; group_index++)
    {
        if (FUNC1(groups->Groups[group_index].Sid, administrators))
        {
            FUNC6(FUNC3(), 0, groups);
            FUNC2(administrators);
            return TRUE;
        }
    }

    /* If we end up here we didn't find the Administrators group */
    FUNC6(FUNC3(), 0, groups);
    FUNC2(administrators);
    return FALSE;
}