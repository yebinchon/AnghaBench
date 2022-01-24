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
struct sway_workspace {int /*<<< orphan*/  node; int /*<<< orphan*/  floating; } ;
struct sway_container {int /*<<< orphan*/  node; struct sway_workspace* workspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_workspace ; 

void FUNC5(struct sway_workspace *workspace,
		struct sway_container *con) {
	if (con->workspace) {
		FUNC0(con);
	}
	FUNC3(workspace->floating, con);
	con->workspace = workspace;
	FUNC1(con, set_workspace, NULL);
	FUNC2(con);
	FUNC4(&workspace->node);
	FUNC4(&con->node);
}