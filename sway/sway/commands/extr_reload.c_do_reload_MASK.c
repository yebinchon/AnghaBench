#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bar_config {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int length; int /*<<< orphan*/ * items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_9__ {TYPE_1__* bars; int /*<<< orphan*/  current_config_path; } ;
struct TYPE_7__ {int length; struct bar_config** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_6__* config ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bar_config*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  rebuild_textures_iterator ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC13(void *data) {
	// store bar ids to check against new bars for barconfig_update events
	list_t *bar_ids = FUNC2();
	for (int i = 0; i < config->bars->length; ++i) {
		struct bar_config *bar = config->bars->items[i];
		FUNC5(bar_ids, FUNC11(bar->id));
	}

	if (!FUNC7(config->current_config_path, true, false)) {
		FUNC12(SWAY_ERROR, "Error(s) reloading config");
		FUNC6(bar_ids);
		return;
	}

	FUNC4(NULL, NULL, "reload");

	FUNC8();

	for (int i = 0; i < config->bars->length; ++i) {
		struct bar_config *bar = config->bars->items[i];
		for (int j = 0; j < bar_ids->length; ++j) {
			if (FUNC10(bar->id, bar_ids->items[j]) == 0) {
				FUNC3(bar);
				break;
			}
		}
	}
	FUNC6(bar_ids);

	FUNC1(true);
	FUNC9(rebuild_textures_iterator, NULL);

	FUNC0();
}