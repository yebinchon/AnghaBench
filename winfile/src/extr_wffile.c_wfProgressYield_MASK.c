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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  MSG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hAccel ; 
 int /*<<< orphan*/  hDlgProgress ; 
 int /*<<< orphan*/  hwndFrame ; 
 int /*<<< orphan*/  hwndMDIClient ; 

VOID FUNC6()
{
    MSG msg;

    while (FUNC2(&msg, NULL, 0, 0, PM_REMOVE))
    {
        if (!hDlgProgress || !FUNC1(hDlgProgress, &msg))
        {
            if (!FUNC4(hwndMDIClient, &msg) &&
                (!hwndFrame || !FUNC3(hwndFrame, hAccel, &msg)))
            {
                FUNC5(&msg);
                FUNC0(&msg);
            }
        }
    }
}