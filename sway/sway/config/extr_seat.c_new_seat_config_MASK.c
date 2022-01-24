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
struct TYPE_2__ {int size; int /*<<< orphan*/ * name; } ;
struct seat_config {int fallback; int hide_cursor_timeout; TYPE_1__ xcursor_theme; int /*<<< orphan*/  allow_constrain; struct seat_config* name; struct seat_config* attachments; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONSTRAIN_DEFAULT ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct seat_config* FUNC0 (int,int) ; 
 struct seat_config* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct seat_config*) ; 
 struct seat_config* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct seat_config*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

struct seat_config *FUNC6(const char* name) {
	struct seat_config *seat = FUNC0(1, sizeof(struct seat_config));
	if (!seat) {
		FUNC5(SWAY_DEBUG, "Unable to allocate seat config");
		return NULL;
	}

	seat->name = FUNC3(name);
	if (!FUNC4(seat->name, "could not allocate name for seat")) {
		FUNC2(seat);
		return NULL;
	}

	seat->fallback = -1;
	seat->attachments = FUNC1();
	if (!FUNC4(seat->attachments,
				"could not allocate seat attachments list")) {
		FUNC2(seat->name);
		FUNC2(seat);
		return NULL;
	}
	seat->hide_cursor_timeout = -1;
	seat->allow_constrain = CONSTRAIN_DEFAULT;
	seat->xcursor_theme.name = NULL;
	seat->xcursor_theme.size = 24;

	return seat;
}