#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seat_config {char* name; } ;
struct TYPE_5__ {TYPE_1__* seat_configs; } ;
struct TYPE_4__ {struct seat_config** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC0 (struct seat_config*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct seat_config*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct seat_config*,struct seat_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct seat_config*) ; 
 struct seat_config* FUNC5 (char*) ; 
 int /*<<< orphan*/  seat_name_cmp ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

struct seat_config *FUNC8(struct seat_config *sc) {
	bool wildcard = FUNC6(sc->name, "*") == 0;
	if (wildcard) {
		FUNC4(sc);
	}

	int i = FUNC2(config->seat_configs, seat_name_cmp, sc->name);
	if (i >= 0) {
		FUNC7(SWAY_DEBUG, "Merging on top of existing seat config");
		struct seat_config *current = config->seat_configs->items[i];
		FUNC3(current, sc);
		FUNC0(sc);
		sc = current;
	} else if (!wildcard) {
		FUNC7(SWAY_DEBUG, "Adding non-wildcard seat config");
		i = FUNC2(config->seat_configs, seat_name_cmp, "*");
		if (i >= 0) {
			FUNC7(SWAY_DEBUG, "Merging on top of seat * config");
			struct seat_config *current = FUNC5(sc->name);
			FUNC3(current, config->seat_configs->items[i]);
			FUNC3(current, sc);
			FUNC0(sc);
			sc = current;
		}
		FUNC1(config->seat_configs, sc);
	} else {
		// New wildcard config. Just add it
		FUNC7(SWAY_DEBUG, "Adding seat * config");
		FUNC1(config->seat_configs, sc);
	}

	FUNC7(SWAY_DEBUG, "Config stored for seat %s", sc->name);

	return sc;
}