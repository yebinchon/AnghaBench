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
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ ERROR_NONE_MAPPED ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int*,char*,int*,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static void FUNC6(PSID * sid)
{
    char *str_sid;
    BOOL ret = FUNC0(sid, &str_sid);
    FUNC4(ret, "ConvertSidToStringSidA() failed: %d\n", FUNC1());
    if (ret)
    {
        char account[MAX_PATH], domain[MAX_PATH];
        SID_NAME_USE use;
        DWORD acc_size = MAX_PATH;
        DWORD dom_size = MAX_PATH;
        ret = FUNC3 (NULL, sid, account, &acc_size, domain, &dom_size, &use);
        FUNC4(ret || FUNC1() == ERROR_NONE_MAPPED,
           "LookupAccountSid(%s) failed: %d\n", str_sid, FUNC1());
        if (ret)
            FUNC5(" %s %s\\%s %d\n", str_sid, domain, account, use);
        else if (FUNC1() == ERROR_NONE_MAPPED)
            FUNC5(" %s couldn't be mapped\n", str_sid);
        FUNC2(str_sid);
    }
}