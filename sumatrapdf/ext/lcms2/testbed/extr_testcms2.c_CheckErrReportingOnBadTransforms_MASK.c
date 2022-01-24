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
typedef  int /*<<< orphan*/  cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ErrorReportingFunction ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FatalErrorQuit ; 
 int /*<<< orphan*/  TrappedError ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsInt32Number FUNC3(void)
{
    cmsInt32Number rc;

    FUNC2(FUNC1(), ErrorReportingFunction);
    rc = FUNC0();
    FUNC2(FUNC1(), FatalErrorQuit);

    // Reset the error state
    TrappedError = FALSE;
    return rc;
}