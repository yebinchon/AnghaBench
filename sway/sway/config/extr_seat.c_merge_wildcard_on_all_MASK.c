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
struct seat_config {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__* seat_configs; } ;
struct TYPE_3__ {int length; struct seat_config** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC0 (struct seat_config*,struct seat_config*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct seat_config *wildcard) {
	for (int i = 0; i < config->seat_configs->length; i++) {
		struct seat_config *sc = config->seat_configs->items[i];
		if (FUNC1(wildcard->name, sc->name) != 0) {
			FUNC2(SWAY_DEBUG, "Merging seat * config on %s", sc->name);
			FUNC0(sc, wildcard);
		}
	}
}