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
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; int /*<<< orphan*/  backing; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct window_mode_entry*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct window_mode_entry*,scalar_t__,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC7(struct window_mode_entry *wme,
    const char *separators, int already)
{
	struct window_copy_mode_data	*data = wme->data;
	u_int				 px, py;

	px = data->cx;
	py = FUNC0(data->backing) + data->cy - data->oy;

	/* Move back to the previous word character. */
	if (already || FUNC3(wme, px, py, separators)) {
		for (;;) {
			if (px > 0) {
				px--;
				if (!FUNC3(wme, px, py, separators))
					break;
			} else {
				if (data->cy == 0 &&
				    (FUNC0(data->backing) == 0 ||
				    data->oy >= FUNC0(data->backing) - 1))
					goto out;
				FUNC1(wme, 0);

				py = FUNC0(data->backing) + data->cy - data->oy;
				px = FUNC2(wme, py);

				/* Stop if separator at EOL. */
				if (px > 0 &&
				    FUNC3(wme, px - 1, py, separators))
					break;
			}
		}
	}

	/* Move back to the beginning of this word. */
	while (px > 0 && !FUNC3(wme, px - 1, py, separators))
		px--;

out:
	FUNC5(wme, px, data->cy);
	if (FUNC6(wme, 1))
		FUNC4(wme, data->cy, 1);
}