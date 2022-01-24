#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sway_workspace {char* representation; TYPE_3__* floating; int /*<<< orphan*/  layout; int /*<<< orphan*/  urgent; TYPE_2__* output; int /*<<< orphan*/ * name; } ;
struct sway_container {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_6__ {int length; struct sway_container** items; } ;
struct TYPE_5__ {TYPE_1__* wlr_output; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct sway_workspace *workspace,
		json_object *object) {
	int num = FUNC4(workspace->name[0]) ? FUNC0(workspace->name) : -1;

	FUNC10(object, "num", FUNC8(num));
	FUNC10(object, "output", workspace->output ?
			FUNC9(workspace->output->wlr_output->name) : NULL);
	FUNC10(object, "type", FUNC9("workspace"));
	FUNC10(object, "urgent",
			FUNC7(workspace->urgent));
	FUNC10(object, "representation", workspace->representation ?
			FUNC9(workspace->representation) : NULL);

	FUNC10(object, "layout",
			FUNC9(
				FUNC2(workspace->layout)));
	FUNC10(object, "orientation",
			FUNC9(
				FUNC3(workspace->layout)));

	// Floating
	json_object *floating_array = FUNC6();
	for (int i = 0; i < workspace->floating->length; ++i) {
		struct sway_container *floater = workspace->floating->items[i];
		FUNC5(floating_array,
				FUNC1(&floater->node));
	}
	FUNC10(object, "floating_nodes", floating_array);
}