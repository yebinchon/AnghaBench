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
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QS_ALLINPUT ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 

__attribute__((used)) static BOOL FUNC4(HANDLE event, int timeout)
{
    DWORD end_time = FUNC1() + timeout;
    MSG msg;

    do {
        if(FUNC2(1, &event, FALSE, timeout, QS_ALLINPUT) == WAIT_OBJECT_0)
            return TRUE;
        while(FUNC3(&msg, 0, 0, 0, PM_REMOVE))
            FUNC0(&msg);
        timeout = end_time - FUNC1();
    }while(timeout > 0);

    return FALSE;
}