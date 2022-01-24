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
struct sway_workspace {scalar_t__ layout; int /*<<< orphan*/  node; int /*<<< orphan*/  tiling; } ;
struct sway_container {int /*<<< orphan*/  node; struct sway_workspace* workspace; } ;

/* Variables and functions */
 scalar_t__ L_STACKED ; 
 scalar_t__ L_TABBED ; 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 struct sway_container* FUNC3 (struct sway_container*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sway_container*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_workspace ; 
 int /*<<< orphan*/  FUNC6 (struct sway_workspace*) ; 

void FUNC7(struct sway_workspace *workspace,
		struct sway_container *con, int index) {
	if (con->workspace) {
		FUNC0(con);
	}
	if (workspace->layout == L_STACKED || workspace->layout == L_TABBED) {
		con = FUNC3(con, workspace->layout);
	}
	FUNC4(workspace->tiling, index, con);
	con->workspace = workspace;
	FUNC1(con, set_workspace, NULL);
	FUNC2(con);
	FUNC6(workspace);
	FUNC5(&workspace->node);
	FUNC5(&con->node);
}