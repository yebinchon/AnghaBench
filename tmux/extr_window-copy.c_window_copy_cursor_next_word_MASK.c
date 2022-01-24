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
typedef  scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; struct screen* backing; } ;
struct screen {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct screen*) ; 
 scalar_t__ FUNC1 (struct screen*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct window_mode_entry*,scalar_t__) ; 
 int FUNC4 (struct window_mode_entry*,scalar_t__,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC8(struct window_mode_entry *wme,
    const char *separators)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*back_s = data->backing;
	u_int				 px, py, xx, yy;
	int				 expected = 0;

	px = data->cx;
	py = FUNC0(back_s) + data->cy - data->oy;
	xx = FUNC3(wme, py);
	yy = FUNC0(back_s) + FUNC1(back_s) - 1;

	/*
	 * First skip past any nonword characters and then any word characters.
	 *
	 * expected is initially set to 0 for the former and then 1 for the
	 * latter.
	 */
	do {
		while (px > xx ||
		    FUNC4(wme, px, py, separators) == expected) {
			/* Move down if we're past the end of the line. */
			if (px > xx) {
				if (py == yy)
					return;
				FUNC2(wme, 0);
				px = 0;

				py = FUNC0(back_s) + data->cy - data->oy;
				xx = FUNC3(wme, py);
			} else
				px++;
		}
		expected = !expected;
	} while (expected == 1);

	FUNC6(wme, px, data->cy);
	if (FUNC7(wme, 1))
		FUNC5(wme, data->cy, 1);
}