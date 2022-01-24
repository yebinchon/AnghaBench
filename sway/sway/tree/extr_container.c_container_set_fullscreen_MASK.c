#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sway_container {int fullscreen_mode; TYPE_1__* workspace; } ;
typedef  enum sway_fullscreen_mode { ____Placeholder_sway_fullscreen_mode } sway_fullscreen_mode ;
struct TYPE_4__ {struct sway_container* fullscreen_global; } ;
struct TYPE_3__ {struct sway_container* fullscreen; } ;

/* Variables and functions */
#define  FULLSCREEN_GLOBAL 130 
#define  FULLSCREEN_NONE 129 
#define  FULLSCREEN_WORKSPACE 128 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 TYPE_2__* root ; 

void FUNC3(struct sway_container *con,
		enum sway_fullscreen_mode mode) {
	if (con->fullscreen_mode == mode) {
		return;
	}

	switch (mode) {
	case FULLSCREEN_NONE:
		FUNC0(con);
		break;
	case FULLSCREEN_WORKSPACE:
		if (root->fullscreen_global) {
			FUNC0(root->fullscreen_global);
		}
		if (con->workspace && con->workspace->fullscreen) {
			FUNC0(con->workspace->fullscreen);
		}
		FUNC2(con);
		break;
	case FULLSCREEN_GLOBAL:
		if (root->fullscreen_global) {
			FUNC0(root->fullscreen_global);
		}
		if (con->fullscreen_mode == FULLSCREEN_WORKSPACE) {
			FUNC0(con);
		}
		FUNC1(con);
		break;
	}
}