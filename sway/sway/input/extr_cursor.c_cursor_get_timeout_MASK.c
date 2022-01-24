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
struct sway_cursor {scalar_t__ pressed_button_count; int /*<<< orphan*/  seat; } ;
struct seat_config {int hide_cursor_timeout; } ;

/* Variables and functions */
 struct seat_config* FUNC0 (int /*<<< orphan*/ ) ; 
 struct seat_config* FUNC1 (char*) ; 

int FUNC2(struct sway_cursor *cursor) {
	if (cursor->pressed_button_count > 0) {
		// Do not hide cursor unless all buttons are released
		return 0;
	}

	struct seat_config *sc = FUNC0(cursor->seat);
	if (!sc) {
		sc = FUNC1("*");
	}
	int timeout = sc ? sc->hide_cursor_timeout : 0;
	if (timeout < 0) {
		timeout = 0;
	}
	return timeout;
}