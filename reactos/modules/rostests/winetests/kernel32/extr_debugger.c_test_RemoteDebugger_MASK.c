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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    BOOL bret, present;
    if(!&pCheckRemoteDebuggerPresent)
    {
        FUNC5("CheckRemoteDebuggerPresent is not available\n");
        return;
    }
    present = TRUE;
    FUNC2(0xdeadbeef);
    bret = FUNC4(FUNC0(),&present);
    FUNC3(bret , "expected CheckRemoteDebuggerPresent to succeed\n");
    FUNC3(0xdeadbeef == FUNC1(),
       "expected error to be unchanged, got %d/%x\n",FUNC1(), FUNC1());

    present = TRUE;
    FUNC2(0xdeadbeef);
    bret = FUNC4(NULL,&present);
    FUNC3(!bret , "expected CheckRemoteDebuggerPresent to fail\n");
    FUNC3(present, "expected parameter to be unchanged\n");
    FUNC3(ERROR_INVALID_PARAMETER == FUNC1(),
       "expected error ERROR_INVALID_PARAMETER, got %d/%x\n",FUNC1(), FUNC1());

    FUNC2(0xdeadbeef);
    bret = FUNC4(FUNC0(),NULL);
    FUNC3(!bret , "expected CheckRemoteDebuggerPresent to fail\n");
    FUNC3(ERROR_INVALID_PARAMETER == FUNC1(),
       "expected error ERROR_INVALID_PARAMETER, got %d/%x\n",FUNC1(), FUNC1());
}