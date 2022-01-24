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
struct TYPE_6__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_7__ {TYPE_1__ User; } ;
typedef  TYPE_2__ TOKEN_USER ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  TokenUser ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static char *FUNC9(void)
{
    HANDLE token;
    DWORD size = 0;
    TOKEN_USER *user;
    char *usersid = NULL;

    if (!&pConvertSidToStringSidA)
    {
        FUNC8("ConvertSidToStringSidA is not available\n");
        return NULL;
    }
    FUNC6(FUNC1(), TOKEN_QUERY, &token);
    FUNC3(token, TokenUser, NULL, size, &size);

    user = FUNC4(FUNC2(), 0, size);
    FUNC3(token, TokenUser, user, size, &size);
    FUNC7(user->User.Sid, &usersid);
    FUNC5(FUNC2(), 0, user);

    FUNC0(token);
    return usersid;
}