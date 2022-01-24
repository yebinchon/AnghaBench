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
typedef  scalar_t__ u_int ;
struct window_pane {TYPE_1__* window; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; struct screen* backing; } ;
struct screen {int dummy; } ;
struct options {int dummy; } ;
struct TYPE_2__ {struct options* options; } ;

/* Variables and functions */
 int MODEKEY_VI ; 
 int FUNC0 (struct options*,char*) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 scalar_t__ FUNC2 (struct screen*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct window_mode_entry*,scalar_t__) ; 
 int FUNC5 (struct window_mode_entry*,scalar_t__,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC9(struct window_mode_entry *wme,
    const char *separators)
{
	struct window_pane		*wp = wme->wp;
	struct window_copy_mode_data	*data = wme->data;
	struct options			*oo = wp->window->options;
	struct screen			*back_s = data->backing;
	u_int				 px, py, xx, yy;
	int				 keys, expected = 1;

	px = data->cx;
	py = FUNC1(back_s) + data->cy - data->oy;
	xx = FUNC4(wme, py);
	yy = FUNC1(back_s) + FUNC2(back_s) - 1;

	keys = FUNC0(oo, "mode-keys");
	if (keys == MODEKEY_VI && !FUNC5(wme, px, py, separators))
		px++;

	/*
	 * First skip past any word characters, then any nonword characters.
	 *
	 * expected is initially set to 1 for the former and then 0 for the
	 * latter.
	 */
	do {
		while (px > xx ||
		    FUNC5(wme, px, py, separators) == expected) {
			/* Move down if we're past the end of the line. */
			if (px > xx) {
				if (py == yy)
					return;
				FUNC3(wme, 0);
				px = 0;

				py = FUNC1(back_s) + data->cy - data->oy;
				xx = FUNC4(wme, py);
			} else
				px++;
		}
		expected = !expected;
	} while (expected == 0);

	if (keys == MODEKEY_VI && px != 0)
		px--;

	FUNC7(wme, px, data->cy);
	if (FUNC8(wme, 1))
		FUNC6(wme, data->cy, 1);
}