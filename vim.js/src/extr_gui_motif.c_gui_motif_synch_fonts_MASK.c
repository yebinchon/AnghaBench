#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XmFontList ;
typedef  int /*<<< orphan*/  XFontStruct ;
struct TYPE_6__ {scalar_t__ norm_font; } ;
struct TYPE_5__ {int /*<<< orphan*/  with; int /*<<< orphan*/  what; scalar_t__ dialog; } ;
typedef  TYPE_1__ SharedFindReplace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmNfontList ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ find_widgets ; 
 TYPE_3__ gui ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ repl_widgets ; 

void
FUNC3(void)
{
    SharedFindReplace *frdp;
    int		    do_replace;
    XFontStruct	    *font;
    XmFontList	    font_list;

    /* FIXME: Unless we find out how to create a XmFontList from a XFontSet,
     * we just give up here on font synchronization. */
    font = (XFontStruct *)gui.norm_font;
    if (font == NULL)
	return;

    font_list = FUNC2(font);

    /* OK this loop is a bit tricky... */
    for (do_replace = 0; do_replace <= 1; ++do_replace)
    {
	frdp = (do_replace) ? (&repl_widgets) : (&find_widgets);
	if (frdp->dialog)
	{
	    FUNC1(frdp->what, XmNfontList, font_list, NULL);
	    if (do_replace)
		FUNC1(frdp->with, XmNfontList, font_list, NULL);
	}
    }

    FUNC0(font_list);
}