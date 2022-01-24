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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ FUNC2 (int) ; 
 int WS_TRACE ; 
 int WS_TRACE_VERBOSE ; 
 int /*<<< orphan*/  p_go ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  workshopInitDone ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6()
{
    char_u	buf[64];

#ifdef WSDEBUG_TRACE
    if (WSDLEVEL(WS_TRACE_VERBOSE | WS_TRACE))
    {
	wstrace("workshop_toolbar_end()\n");
    }
#endif

    /*
     * Turn on ToolBar.
     */
    FUNC1(buf, p_go);
    if (FUNC4(p_go, 'T') == NULL)
    {
	FUNC0(buf, "T");
	FUNC3((char_u *)"go", 0L, buf, 0);
    }
    workshopInitDone = True;
}