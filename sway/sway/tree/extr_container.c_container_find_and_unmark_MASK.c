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
struct sway_container {TYPE_1__* marks; } ;
struct TYPE_2__ {int length; char** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  find_by_mark_iterator ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 struct sway_container* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

bool FUNC6(char *mark) {
	struct sway_container *con = FUNC4(
		find_by_mark_iterator, mark);
	if (!con) {
		return false;
	}

	for (int i = 0; i < con->marks->length; ++i) {
		char *con_mark = con->marks->items[i];
		if (FUNC5(con_mark, mark) == 0) {
			FUNC1(con_mark);
			FUNC3(con->marks, i);
			FUNC0(con);
			FUNC2(con, "mark");
			return true;
		}
	}
	return false;
}