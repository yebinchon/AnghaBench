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
struct sway_container {scalar_t__ workspace; struct sway_container* parent; int /*<<< orphan*/ * formatted_title; int /*<<< orphan*/  children; int /*<<< orphan*/  layout; int /*<<< orphan*/  view; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(struct sway_container *con) {
	if (!con->view) {
		size_t len = FUNC1(con->layout,
				con->children, NULL);
		FUNC4(con->formatted_title);
		con->formatted_title = FUNC0(len + 1, sizeof(char));
		if (!FUNC5(con->formatted_title,
					"Unable to allocate title string")) {
			return;
		}
		FUNC1(con->layout, con->children,
				con->formatted_title);
		FUNC2(con);
		FUNC3(con);
	}
	if (con->parent) {
		FUNC7(con->parent);
	} else if (con->workspace) {
		FUNC6(con->workspace);
	}
}