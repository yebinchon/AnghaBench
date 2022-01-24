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
struct sway_container {int saved_border; int border; TYPE_1__* view; } ;
typedef  enum sway_container_border { ____Placeholder_sway_container_border } sway_container_border ;
struct TYPE_2__ {int using_csd; } ;

/* Variables and functions */
 int B_CSD ; 
 scalar_t__ FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC2(struct sway_container *con,
		enum sway_container_border new_border) {
	if (con->view) {
		if (con->view->using_csd && new_border != B_CSD) {
			FUNC1(con->view, false);
		} else if (!con->view->using_csd && new_border == B_CSD) {
			FUNC1(con->view, true);
			con->saved_border = con->border;
		}
	}
	if (new_border != B_CSD || FUNC0(con)) {
		con->border = new_border;
	}
	if (con->view) {
		con->view->using_csd = new_border == B_CSD;
	}
}