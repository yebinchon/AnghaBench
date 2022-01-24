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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ E_HANDLE ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    BOOL bThemeActive;
    BOOL bAppThemed;
    BOOL bTPDefined;

    bThemeActive = FUNC2();
    FUNC6("Theming is %s\n", (bThemeActive) ? "active" : "inactive");

    bAppThemed = FUNC1();
    FUNC6("Test executable is %s\n", (bAppThemed) ? "themed" : "not themed");

    FUNC4(0xdeadbeef);
    bTPDefined = FUNC3(NULL, 0 , 0);
    FUNC5( bTPDefined == FALSE, "Expected FALSE\n");
    FUNC5( FUNC0() == E_HANDLE,
        "Expected E_HANDLE, got 0x%08x\n",
        FUNC0());
}