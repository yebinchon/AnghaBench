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
struct grid_cell {int fg; int bg; scalar_t__ attr; } ;
struct style {scalar_t__ list; scalar_t__ range_type; int range_argument; scalar_t__ align; scalar_t__ default_type; int fill; struct grid_cell gc; } ;

/* Variables and functions */
 scalar_t__ GRID_ATTR_CHARSET ; 
 scalar_t__ STYLE_ALIGN_CENTRE ; 
 scalar_t__ STYLE_ALIGN_DEFAULT ; 
 scalar_t__ STYLE_ALIGN_LEFT ; 
 scalar_t__ STYLE_ALIGN_RIGHT ; 
 scalar_t__ STYLE_DEFAULT_BASE ; 
 scalar_t__ STYLE_DEFAULT_POP ; 
 scalar_t__ STYLE_DEFAULT_PUSH ; 
 scalar_t__ STYLE_LIST_FOCUS ; 
 scalar_t__ STYLE_LIST_LEFT_MARKER ; 
 scalar_t__ STYLE_LIST_OFF ; 
 scalar_t__ STYLE_LIST_ON ; 
 scalar_t__ STYLE_LIST_RIGHT_MARKER ; 
 scalar_t__ STYLE_RANGE_LEFT ; 
 scalar_t__ STYLE_RANGE_NONE ; 
 scalar_t__ STYLE_RANGE_RIGHT ; 
 scalar_t__ STYLE_RANGE_WINDOW ; 
 char const* FUNC0 (scalar_t__) ; 
 char const* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 scalar_t__ FUNC3 (char*,int,char*,char const*,char const*) ; 

const char *
FUNC4(struct style *sy)
{
	struct grid_cell	*gc = &sy->gc;
	int			 off = 0;
	const char		*comma = "", *tmp = "";
	static char		 s[256];
	char			 b[16];

	*s = '\0';

	if (sy->list != STYLE_LIST_OFF) {
		if (sy->list == STYLE_LIST_ON)
			tmp = "on";
		else if (sy->list == STYLE_LIST_FOCUS)
			tmp = "focus";
		else if (sy->list == STYLE_LIST_LEFT_MARKER)
			tmp = "left-marker";
		else if (sy->list == STYLE_LIST_RIGHT_MARKER)
			tmp = "right-marker";
		off += FUNC3(s + off, sizeof s - off, "%slist=%s", comma,
		    tmp);
		comma = ",";
	}
	if (sy->range_type != STYLE_RANGE_NONE) {
		if (sy->range_type == STYLE_RANGE_LEFT)
			tmp = "left";
		else if (sy->range_type == STYLE_RANGE_RIGHT)
			tmp = "right";
		else if (sy->range_type == STYLE_RANGE_WINDOW) {
			FUNC2(b, sizeof b, "window|%u", sy->range_argument);
			tmp = b;
		}
		off += FUNC3(s + off, sizeof s - off, "%srange=%s", comma,
		    tmp);
		comma = ",";
	}
	if (sy->align != STYLE_ALIGN_DEFAULT) {
		if (sy->align == STYLE_ALIGN_LEFT)
			tmp = "left";
		else if (sy->align == STYLE_ALIGN_CENTRE)
			tmp = "centre";
		else if (sy->align == STYLE_ALIGN_RIGHT)
			tmp = "right";
		off += FUNC3(s + off, sizeof s - off, "%salign=%s", comma,
		    tmp);
		comma = ",";
	}
	if (sy->default_type != STYLE_DEFAULT_BASE) {
		if (sy->default_type == STYLE_DEFAULT_PUSH)
			tmp = "push-default";
		else if (sy->default_type == STYLE_DEFAULT_POP)
			tmp = "pop-default";
		off += FUNC3(s + off, sizeof s - off, "%s%s", comma, tmp);
		comma = ",";
	}
	if (sy->fill != 8) {
		off += FUNC3(s + off, sizeof s - off, "%sfill=%s", comma,
		    FUNC1(sy->fill));
		comma = ",";
	}
	if (gc->fg != 8) {
		off += FUNC3(s + off, sizeof s - off, "%sfg=%s", comma,
		    FUNC1(gc->fg));
		comma = ",";
	}
	if (gc->bg != 8) {
		off += FUNC3(s + off, sizeof s - off, "%sbg=%s", comma,
		    FUNC1(gc->bg));
		comma = ",";
	}
	if (gc->attr != 0 && gc->attr != GRID_ATTR_CHARSET) {
		FUNC3(s + off, sizeof s - off, "%s%s", comma,
		    FUNC0(gc->attr));
		comma = ",";
	}

	if (*s == '\0')
		return ("default");
	return (s);
}