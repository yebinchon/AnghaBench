#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int length; int /*<<< orphan*/ * items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(list_t **themes, list_t **basedirs) {
	*basedirs = FUNC1();

	*themes = FUNC0();
	for (int i = 0; i < (*basedirs)->length; ++i) {
		list_t *dir_themes = FUNC4((*basedirs)->items[i]);
		if (dir_themes == NULL) {
			continue;
		}
		FUNC2(*themes, dir_themes);
		FUNC3(dir_themes);
	}

	FUNC5(*themes);
}