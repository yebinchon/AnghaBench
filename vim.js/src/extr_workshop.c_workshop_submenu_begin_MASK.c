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

/* Variables and functions */
 int /*<<< orphan*/  True ; 
 int WS_TRACE ; 
 int /*<<< orphan*/  curMenuName ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ws_debug ; 
 int ws_dlevel ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void
FUNC5(
	char		*label)
{
#ifdef WSDEBUG_TRACE
    if (ws_debug  && ws_dlevel & WS_TRACE
	    && strncmp(curMenuName, "ToolBar", 7) != 0)
	wstrace("workshop_submenu_begin(%s)\n", label);
#endif

    FUNC1(curMenuName, ".");
    FUNC1(curMenuName, FUNC0(label));

    FUNC3(True);
}