#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; scalar_t__ modekeys; struct screen* backing; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
struct screen {TYPE_2__* grid; } ;
struct grid_line {int flags; scalar_t__ cellsize; } ;
struct TYPE_4__ {int size; char* data; } ;
struct grid_cell {int flags; TYPE_1__ data; } ;
typedef  enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;
struct TYPE_5__ {scalar_t__ sx; } ;

/* Variables and functions */
 int GRID_FLAG_PADDING ; 
 int GRID_LINE_WRAPPED ; 
 scalar_t__ MODEKEY_EMACS ; 
 scalar_t__ MODEKEY_VI ; 
 int WINDOW_COPY_CMD_NOTHING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,scalar_t__,struct grid_cell*) ; 
 struct grid_line* FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct screen*) ; 
 scalar_t__ FUNC3 (struct screen*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct window_copy_cmd_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,char*) ; 
 scalar_t__ FUNC7 (struct window_mode_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static enum window_copy_cmd_action
FUNC9(struct window_copy_cmd_state *cs)
{
	struct window_mode_entry	*wme = cs->wme;
	u_int				 np = wme->prefix;
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = data->backing;
	char				 open[] = "{[(", close[] = "}])";
	char				 tried, found, end, *cp;
	u_int				 px, py, xx, yy, sx, sy, n;
	struct grid_cell		 gc;
	int				 failed;
	struct grid_line		*gl;

	for (; np != 0; np--) {
		/* Get cursor position and line length. */
		px = data->cx;
		py = FUNC2(s) + data->cy - data->oy;
		xx = FUNC7(wme, py);
		yy = FUNC2(s) + FUNC3(s) - 1;
		if (xx == 0)
			break;

		/*
		 * Get the current character. If not on a bracket, try the
		 * next. If still not, then behave like next-word.
		 */
		tried = 0;
	retry:
		FUNC0(s->grid, px, py, &gc);
		if (gc.data.size != 1 || (gc.flags & GRID_FLAG_PADDING))
			cp = NULL;
		else {
			found = *gc.data.data;

			/*
			 * In vi mode, attempt to move to previous bracket if a
			 * closing bracket is found first. If this fails,
			 * return to the original cursor position.
			 */
			cp = FUNC4(close, found);
			if (cp != NULL && data->modekeys == MODEKEY_VI) {
				sx = data->cx;
				sy = FUNC2(s) + data->cy - data->oy;

				FUNC8(wme, px, py);
				FUNC5(cs);

				px = data->cx;
				py = FUNC2(s) + data->cy - data->oy;
				FUNC0(s->grid, px, py, &gc);
				if (gc.data.size != 1 ||
				    (gc.flags & GRID_FLAG_PADDING) ||
				    FUNC4(close, *gc.data.data) == NULL)
					FUNC8(wme, sx, sy);
				break;
			}

			cp = FUNC4(open, found);
		}
		if (cp == NULL) {
			if (data->modekeys == MODEKEY_EMACS) {
				if (!tried && px <= xx) {
					px++;
					tried = 1;
					goto retry;
				}
				FUNC6(wme, "{[( ");
				continue;
			}
			/* For vi, continue searching for bracket until EOL. */
			if (px > xx) {
				if (py == yy)
					continue;
				gl = FUNC1(s->grid, py);
				if (~gl->flags & GRID_LINE_WRAPPED)
					continue;
				if (gl->cellsize > s->grid->sx)
					continue;
				px = 0;
				py++;
				xx = FUNC7(wme, py);
			} else
				px++;
			goto retry;
		}
		end = close[cp - open];

		/* Walk forward until the matching bracket is reached. */
		n = 1;
		failed = 0;
		do {
			if (px > xx) {
				if (py == yy) {
					failed = 1;
					break;
				}
				px = 0;
				py++;
				xx = FUNC7(wme, py);
			} else
				px++;

			FUNC0(s->grid, px, py, &gc);
			if (gc.data.size == 1 &&
			    (~gc.flags & GRID_FLAG_PADDING)) {
				if (*gc.data.data == found)
					n++;
				else if (*gc.data.data == end)
					n--;
			}
		} while (n != 0);

		/* Move the cursor to the found location if any. */
		if (!failed)
			FUNC8(wme, px, py);
	}

	return (WINDOW_COPY_CMD_NOTHING);
}