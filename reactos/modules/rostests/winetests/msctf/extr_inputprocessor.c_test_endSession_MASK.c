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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SINK_OPTIONAL ; 
 int /*<<< orphan*/  SINK_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  g_dm ; 
 int /*<<< orphan*/  g_tm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * test_CurrentFocus ; 
 int /*<<< orphan*/  test_OnSetFocus ; 
 int /*<<< orphan*/  test_PrevFocus ; 
 int /*<<< orphan*/  test_ShouldDeactivate ; 

__attribute__((used)) static void FUNC4(void)
{
    HRESULT hr;
    test_ShouldDeactivate = TRUE;
    test_CurrentFocus = NULL;
    test_PrevFocus = g_dm;
    test_OnSetFocus  = SINK_OPTIONAL; /* Doesn't fire on Win7 */
    hr = FUNC0(g_tm);
    FUNC2(FUNC1(hr),"Failed to Deactivate\n");
    FUNC3(&test_OnSetFocus,"OnSetFocus");
    test_OnSetFocus  = SINK_UNEXPECTED;
}