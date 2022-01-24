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
struct sway_seat {TYPE_1__* wlr_seat; } ;
struct seat_config {int fallback; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct seat_config*) ; 
 struct sway_seat* FUNC2 () ; 
 struct seat_config* FUNC3 (int /*<<< orphan*/ ) ; 
 struct seat_config* FUNC4 (struct seat_config*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

void FUNC6(void) {
	struct sway_seat *seat = NULL;
	if (!FUNC0()) {
		FUNC5(SWAY_DEBUG, "no fallback seat config - creating default");
		seat = FUNC2();
		struct seat_config *sc = FUNC3(seat->wlr_seat->name);
		sc->fallback = true;
		sc = FUNC4(sc);
		FUNC1(sc);
	}
}