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
typedef  int /*<<< orphan*/ * PSID ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ **) ; 
 int* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    PSID psid = NULL;

    if (!&pGetSidSubAuthority || !&pConvertStringSidToSidA || !&pIsValidSid || !&pGetSidSubAuthorityCount)
    {
        FUNC8("Some functions not available\n");
        return;
    }
    /* Note: on windows passing in an invalid index like -1, lets GetSidSubAuthority return 0x05000000 but
             still GetLastError returns ERROR_SUCCESS then. We don't test these unlikely cornercases here for now */
    FUNC3(FUNC4("S-1-5-21-93476-23408-4576",&psid),"ConvertStringSidToSidA failed\n");
    FUNC3(FUNC7(psid),"Sid is not valid\n");
    FUNC2(0xbebecaca);
    FUNC3(*FUNC6(psid) == 4,"GetSidSubAuthorityCount gave %d expected 4\n",*FUNC6(psid));
    FUNC3(FUNC0() == 0,"GetLastError returned %d instead of 0\n",FUNC0());
    FUNC2(0xbebecaca);
    FUNC3(*FUNC5(psid,0) == 21,"GetSidSubAuthority gave %d expected 21\n",*FUNC5(psid,0));
    FUNC3(FUNC0() == 0,"GetLastError returned %d instead of 0\n",FUNC0());
    FUNC2(0xbebecaca);
    FUNC3(*FUNC5(psid,1) == 93476,"GetSidSubAuthority gave %d expected 93476\n",*FUNC5(psid,1));
    FUNC3(FUNC0() == 0,"GetLastError returned %d instead of 0\n",FUNC0());
    FUNC2(0xbebecaca);
    FUNC3(FUNC5(psid,4) != NULL,"Expected out of bounds GetSidSubAuthority to return a non-NULL pointer\n");
    FUNC3(FUNC0() == 0,"GetLastError returned %d instead of 0\n",FUNC0());
    FUNC1(psid);
}