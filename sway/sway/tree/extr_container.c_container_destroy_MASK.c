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
struct TYPE_5__ {int /*<<< orphan*/  children; } ;
struct TYPE_4__ {int destroying; scalar_t__ ntxnrefs; } ;
struct sway_container {TYPE_3__* view; int /*<<< orphan*/  marks_urgent; int /*<<< orphan*/  marks_unfocused; int /*<<< orphan*/  marks_focused_inactive; int /*<<< orphan*/  marks_focused; int /*<<< orphan*/  marks; int /*<<< orphan*/  outputs; TYPE_2__ current; int /*<<< orphan*/  children; int /*<<< orphan*/  title_urgent; int /*<<< orphan*/  title_unfocused; int /*<<< orphan*/  title_focused_inactive; int /*<<< orphan*/  title_focused; struct sway_container* formatted_title; struct sway_container* title; TYPE_1__ node; } ;
struct TYPE_6__ {scalar_t__ destroying; struct sway_container* container; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct sway_container *con) {
	if (!FUNC3(con->node.destroying,
				"Tried to free container which wasn't marked as destroying")) {
		return;
	}
	if (!FUNC3(con->node.ntxnrefs == 0, "Tried to free container "
				"which is still referenced by transactions")) {
		return;
	}
	FUNC0(con->title);
	FUNC0(con->formatted_title);
	FUNC5(con->title_focused);
	FUNC5(con->title_focused_inactive);
	FUNC5(con->title_unfocused);
	FUNC5(con->title_urgent);
	FUNC1(con->children);
	FUNC1(con->current.children);
	FUNC1(con->outputs);

	FUNC2(con->marks);
	FUNC5(con->marks_focused);
	FUNC5(con->marks_focused_inactive);
	FUNC5(con->marks_unfocused);
	FUNC5(con->marks_urgent);

	if (con->view) {
		if (con->view->container == con) {
			con->view->container = NULL;
		}
		if (con->view->destroying) {
			FUNC4(con->view);
		}
	}

	FUNC0(con);
}