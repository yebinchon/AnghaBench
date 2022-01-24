#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {int fg; int bg; int attr; int /*<<< orphan*/  flags; } ;
struct style {int fill; TYPE_1__ gc; int /*<<< orphan*/  align; int /*<<< orphan*/  range_argument; int /*<<< orphan*/  range_type; int /*<<< orphan*/  list; int /*<<< orphan*/  default_type; } ;
struct grid_cell {int fg; int bg; int attr; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  align; int /*<<< orphan*/  range_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  STYLE_ALIGN_CENTRE ; 
 int /*<<< orphan*/  STYLE_ALIGN_LEFT ; 
 int /*<<< orphan*/  STYLE_ALIGN_RIGHT ; 
 int /*<<< orphan*/  STYLE_DEFAULT_POP ; 
 int /*<<< orphan*/  STYLE_DEFAULT_PUSH ; 
 int /*<<< orphan*/  STYLE_LIST_FOCUS ; 
 int /*<<< orphan*/  STYLE_LIST_LEFT_MARKER ; 
 int /*<<< orphan*/  STYLE_LIST_OFF ; 
 int /*<<< orphan*/  STYLE_LIST_ON ; 
 int /*<<< orphan*/  STYLE_LIST_RIGHT_MARKER ; 
 int /*<<< orphan*/  STYLE_RANGE_LEFT ; 
 int /*<<< orphan*/  STYLE_RANGE_RIGHT ; 
 int /*<<< orphan*/  STYLE_RANGE_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char const*,char const) ; 
 size_t FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct style*,struct style*) ; 
 TYPE_2__ style_default ; 

int
FUNC11(struct style *sy, const struct grid_cell *base, const char *in)
{
	struct style	saved;
	const char	delimiters[] = " ,", *cp;
	char		tmp[256], *found;
	int		value;
	size_t		end;

	if (*in == '\0')
		return (0);
	FUNC10(&saved, sy);

	do {
		while (*in != '\0' && FUNC6(delimiters, *in) != NULL)
			in++;
		if (*in == '\0')
			break;

		end = FUNC7(in, delimiters);
		if (end > (sizeof tmp) - 1)
			goto error;
		FUNC4(tmp, in, end);
		tmp[end] = '\0';

		if (FUNC5(tmp, "default") == 0) {
			sy->gc.fg = base->fg;
			sy->gc.bg = base->bg;
			sy->gc.attr = base->attr;
			sy->gc.flags = base->flags;
		} else if (FUNC5(tmp, "push-default") == 0)
			sy->default_type = STYLE_DEFAULT_PUSH;
		else if (FUNC5(tmp, "pop-default") == 0)
			sy->default_type = STYLE_DEFAULT_POP;
		else if (FUNC5(tmp, "nolist") == 0)
			sy->list = STYLE_LIST_OFF;
		else if (FUNC8(tmp, "list=", 5) == 0) {
			if (FUNC5(tmp + 5, "on") == 0)
				sy->list = STYLE_LIST_ON;
			else if (FUNC5(tmp + 5, "focus") == 0)
				sy->list = STYLE_LIST_FOCUS;
			else if (FUNC5(tmp + 5, "left-marker") == 0)
				sy->list = STYLE_LIST_LEFT_MARKER;
			else if (FUNC5(tmp + 5, "right-marker") == 0)
				sy->list = STYLE_LIST_RIGHT_MARKER;
			else
				goto error;
		} else if (FUNC5(tmp, "norange") == 0) {
			sy->range_type = style_default.range_type;
			sy->range_argument = style_default.range_type;
		} else if (end > 6 && FUNC8(tmp, "range=", 6) == 0) {
			found = FUNC6(tmp + 6, '|');
			if (found != NULL) {
				*found++ = '\0';
				if (*found == '\0')
					goto error;
				for (cp = found; *cp != '\0'; cp++) {
					if (!FUNC3((u_char)*cp))
						goto error;
				}
			}
			if (FUNC5(tmp + 6, "left") == 0) {
				if (found != NULL)
					goto error;
				sy->range_type = STYLE_RANGE_LEFT;
				sy->range_argument = 0;
			} else if (FUNC5(tmp + 6, "right") == 0) {
				if (found != NULL)
					goto error;
				sy->range_type = STYLE_RANGE_RIGHT;
				sy->range_argument = 0;
			} else if (FUNC5(tmp + 6, "window") == 0) {
				if (found == NULL)
					goto error;
				sy->range_type = STYLE_RANGE_WINDOW;
				sy->range_argument = FUNC0(found);
			}
		} else if (FUNC5(tmp, "noalign") == 0)
			sy->align = style_default.align;
		else if (end > 6 && FUNC8(tmp, "align=", 6) == 0) {
			if (FUNC5(tmp + 6, "left") == 0)
				sy->align = STYLE_ALIGN_LEFT;
			else if (FUNC5(tmp + 6, "centre") == 0)
				sy->align = STYLE_ALIGN_CENTRE;
			else if (FUNC5(tmp + 6, "right") == 0)
				sy->align = STYLE_ALIGN_RIGHT;
			else
				goto error;
		} else if (end > 5 && FUNC8(tmp, "fill=", 5) == 0) {
			if ((value = FUNC2(tmp + 5)) == -1)
				goto error;
			sy->fill = value;
		} else if (end > 3 && FUNC8(tmp + 1, "g=", 2) == 0) {
			if ((value = FUNC2(tmp + 3)) == -1)
				goto error;
			if (*in == 'f' || *in == 'F') {
				if (value != 8)
					sy->gc.fg = value;
				else
					sy->gc.fg = base->fg;
			} else if (*in == 'b' || *in == 'B') {
				if (value != 8)
					sy->gc.bg = value;
				else
					sy->gc.bg = base->bg;
			} else
				goto error;
		} else if (FUNC5(tmp, "none") == 0)
			sy->gc.attr = 0;
		else if (end > 2 && FUNC8(tmp, "no", 2) == 0) {
			if ((value = FUNC1(tmp + 2)) == -1)
				goto error;
			sy->gc.attr &= ~value;
		} else {
			if ((value = FUNC1(tmp)) == -1)
				goto error;
			sy->gc.attr |= value;
		}

		in += end + FUNC9(in + end, delimiters);
	} while (*in != '\0');

	return (0);

error:
	FUNC10(sy, &saved);
	return (-1);
}