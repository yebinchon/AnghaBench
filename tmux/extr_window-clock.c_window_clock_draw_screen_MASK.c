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
typedef  int u_int ;
typedef  int /*<<< orphan*/  time_t ;
struct window_pane {TYPE_1__* window; } ;
struct window_mode_entry {struct window_clock_mode_data* data; struct window_pane* wp; } ;
struct screen {int dummy; } ;
struct window_clock_mode_data {struct screen screen; } ;
struct tm {int tm_hour; } ;
struct screen_write_ctx {int dummy; } ;
struct grid_cell {int fg; int bg; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_FLAG_NOPALETTE ; 
 int /*<<< orphan*/  grid_default_cell ; 
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct grid_cell*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct screen*) ; 
 int FUNC4 (struct screen*) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct screen_write_ctx*,struct grid_cell*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct screen_write_ctx*,struct grid_cell*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct screen_write_ctx*,int /*<<< orphan*/ *,struct screen*) ; 
 int /*<<< orphan*/  FUNC10 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__*** window_clock_table ; 

__attribute__((used)) static void
FUNC15(struct window_mode_entry *wme)
{
	struct window_pane		*wp = wme->wp;
	struct window_clock_mode_data	*data = wme->data;
	struct screen_write_ctx	 	 ctx;
	int				 colour, style;
	struct screen			*s = &data->screen;
	struct grid_cell		 gc;
	char				 tim[64], *ptr;
	time_t				 t;
	struct tm			*tm;
	u_int				 i, j, x, y, idx;

	colour = FUNC2(wp->window->options, "clock-mode-colour");
	style = FUNC2(wp->window->options, "clock-mode-style");

	FUNC9(&ctx, NULL, s);

	t = FUNC14(NULL);
	tm = FUNC0(&t);
	if (style == 0) {
		FUNC11(tim, sizeof tim, "%l:%M ", FUNC0(&t));
		if (tm->tm_hour >= 12)
			FUNC12(tim, "PM", sizeof tim);
		else
			FUNC12(tim, "AM", sizeof tim);
	} else
		FUNC11(tim, sizeof tim, "%H:%M", tm);

	FUNC5(&ctx, 8);

	if (FUNC3(s) < 6 * FUNC13(tim) || FUNC4(s) < 6) {
		if (FUNC3(s) >= FUNC13(tim) && FUNC4(s) != 0) {
			x = (FUNC3(s) / 2) - (FUNC13(tim) / 2);
			y = FUNC4(s) / 2;
			FUNC6(&ctx, x, y, 0);

			FUNC1(&gc, &grid_default_cell, sizeof gc);
			gc.flags |= GRID_FLAG_NOPALETTE;
			gc.fg = colour;
			FUNC8(&ctx, &gc, "%s", tim);
		}

		FUNC10(&ctx);
		return;
	}

	x = (FUNC3(s) / 2) - 3 * FUNC13(tim);
	y = (FUNC4(s) / 2) - 3;

	FUNC1(&gc, &grid_default_cell, sizeof gc);
	gc.flags |= GRID_FLAG_NOPALETTE;
	gc.bg = colour;
	for (ptr = tim; *ptr != '\0'; ptr++) {
		if (*ptr >= '0' && *ptr <= '9')
			idx = *ptr - '0';
		else if (*ptr == ':')
			idx = 10;
		else if (*ptr == 'A')
			idx = 11;
		else if (*ptr == 'P')
			idx = 12;
		else if (*ptr == 'M')
			idx = 13;
		else {
			x += 6;
			continue;
		}

		for (j = 0; j < 5; j++) {
			for (i = 0; i < 5; i++) {
				FUNC6(&ctx, x + i, y + j, 0);
				if (window_clock_table[idx][j][i])
					FUNC7(&ctx, &gc, ' ');
			}
		}
		x += 6;
	}

	FUNC10(&ctx);
}