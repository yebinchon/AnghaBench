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
struct sway_workspace {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_container {int /*<<< orphan*/  node; struct sway_workspace* workspace; } ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_4__ {TYPE_1__* fullscreen_global; } ;
struct TYPE_3__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int L_STACKED ; 
 int L_TABBED ; 
 int FUNC0 (struct sway_container*) ; 
 TYPE_2__* root ; 
 int /*<<< orphan*/ * FUNC1 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*,struct sway_container*) ; 
 scalar_t__ FUNC4 (struct sway_workspace*) ; 

__attribute__((used)) static void FUNC5(struct sway_container *con1,
		struct sway_container *con2, struct sway_seat *seat,
		struct sway_container *focus) {
	if (focus == con1 || focus == con2) {
		struct sway_workspace *ws1 = con1->workspace;
		struct sway_workspace *ws2 = con2->workspace;
		enum sway_container_layout layout1 = FUNC0(con1);
		enum sway_container_layout layout2 = FUNC0(con2);
		if (focus == con1 && (layout2 == L_TABBED || layout2 == L_STACKED)) {
			if (FUNC4(ws2)) {
				FUNC2(seat, &con2->node);
			}
			FUNC3(seat, ws1 != ws2 ? con2 : con1);
		} else if (focus == con2 && (layout1 == L_TABBED
					|| layout1 == L_STACKED)) {
			if (FUNC4(ws1)) {
				FUNC2(seat, &con1->node);
			}
			FUNC3(seat, ws1 != ws2 ? con1 : con2);
		} else if (ws1 != ws2) {
			FUNC3(seat, focus == con1 ? con2 : con1);
		} else {
			FUNC3(seat, focus);
		}
	} else {
		FUNC3(seat, focus);
	}

	if (root->fullscreen_global) {
		FUNC2(seat,
				FUNC1(seat, &root->fullscreen_global->node));
	}
}