#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 scalar_t__* computer_name ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 scalar_t__* user_name ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static BOOL FUNC6(void)
{
    DWORD dwSize;
    BOOL rc;

    user_name[0] = 0;
    dwSize = FUNC0(user_name);
    rc=FUNC3(user_name, &dwSize);
    if (rc==FALSE && FUNC2()==ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC5("GetUserNameW is not available.\n");
        return FALSE;
    }
    FUNC4(rc, "User Name Retrieved\n");

    computer_name[0] = 0;
    dwSize = FUNC0(computer_name);
    FUNC4(FUNC1(computer_name, &dwSize), "Computer Name Retrieved\n");
    return TRUE;
}