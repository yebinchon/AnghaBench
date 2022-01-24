#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XmString ;
typedef  int /*<<< orphan*/ * XmFontList ;
typedef  int /*<<< orphan*/  XFontStruct ;
struct TYPE_2__ {scalar_t__ norm_font; } ;
typedef  scalar_t__ Dimension ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int WS_TRACE ; 
 int WS_TRACE_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7()
{
    XmFontList	 fontList;	/* fontList made from gui.norm_font */
    XmString	 str;
    Dimension	 w;
    Dimension	 h;

#ifdef WSDEBUG_TRACE
    if (WSDLEVEL(WS_TRACE_VERBOSE | WS_TRACE))
	wstrace("workshop_get_font_height()\n");
#endif

    /* Pick the proper signs for this font size */
    fontList = FUNC5((XFontStruct *)gui.norm_font);
    h = 0;
    if (fontList != NULL)
    {
	str = FUNC2("A");
	FUNC3(fontList, str, &w, &h);
	FUNC4(str);
	FUNC1(fontList);
    }

    return (int)h;
}