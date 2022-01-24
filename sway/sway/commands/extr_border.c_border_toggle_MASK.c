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
struct sway_container {int border; TYPE_1__* view; } ;
struct TYPE_2__ {int /*<<< orphan*/  xdg_decoration; scalar_t__ using_csd; } ;

/* Variables and functions */
#define  B_CSD 131 
#define  B_NONE 130 
#define  B_NORMAL 129 
#define  B_PIXEL 128 
 int /*<<< orphan*/  FUNC0 (struct sway_container*,int const) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void FUNC2(struct sway_container *con) {
	if (con->view && con->view->using_csd) {
		FUNC0(con, B_NONE);
		return;
	}
	switch (con->border) {
	case B_NONE:
		FUNC0(con, B_PIXEL);
		break;
	case B_PIXEL:
		FUNC0(con, B_NORMAL);
		break;
	case B_NORMAL:
		if (con->view && con->view->xdg_decoration) {
			FUNC0(con, B_CSD);
		} else {
			FUNC0(con, B_NONE);
		}
		break;
	case B_CSD:
		// view->using_csd should be true so it would have returned above
		FUNC1(false, "Unreachable");
		break;
	}
}