#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sense; int /*<<< orphan*/ * verb; } ;
typedef  TYPE_1__ VerbSense ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int WS_TRACE ; 
 int WS_TRACE_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 scalar_t__ ws_debug ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10(
	VerbSense	*vs)		/* list of verbs to (de)sensitize */
{
    VerbSense	*vp;		/* iterate through vs */
    char	*menu_name;	/* used in menu lookup */
    int		 cnt;		/* count of verbs to skip */
    int		 len;		/* length of nonvariant part of command */
    char	 cbuf[4096];

#ifdef WSDEBUG_TRACE
    if (WSDLEVEL(WS_TRACE_VERBOSE) || WSDLEVEL(4))
    {
	wsdebug("workshop_frame_sensitivities(\n");
	for (vp = vs; vp->verb != NULL; vp++)
	    wsdebug("\t%-25s%d\n", vp->verb, vp->sense);
	wsdebug(")\n");
    }
    else if (WSDLEVEL(WS_TRACE))
	wstrace("workshop_frame_sensitivities()\n");
#endif
#ifdef WSDEBUG_SENSE
    if (ws_debug)
	for (vp = vs; vp->verb != NULL; vp++)
	    wsdebug("change: %-21.20s%-21.20s(%s)\n",
		    "", vp->verb, vp->sense == 1 ?
		    "Sensitive" : "Insensitive");
#endif

    /*
     * Look for all matching menu entries for the verb. There may be more
     * than one if the verb has both a menu and toolbar entry.
     */
    for (vp = vs; vp->verb != NULL; vp++)
    {
	cnt = 0;
	FUNC6(cbuf, "amenu");
	FUNC5(cbuf, " ");
	FUNC5(cbuf, vp->sense ? "enable" : "disable");
	FUNC5(cbuf, " ");
	len = FUNC7(cbuf);
	while ((menu_name = FUNC4(vp->verb, cnt++)) != NULL)
	{
	    FUNC6(&cbuf[len], menu_name);
	    FUNC1(cbuf, FALSE);
	}
    }
    FUNC3(0);
    FUNC2();
}