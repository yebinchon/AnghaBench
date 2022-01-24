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
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct TYPE_3__ {int /*<<< orphan*/  link; } ;
struct sway_xdg_popup {TYPE_2__ destroy; TYPE_1__ new_popup; } ;
struct sway_view_child {int /*<<< orphan*/ * impl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_xdg_popup*) ; 
 int /*<<< orphan*/  popup_impl ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sway_view_child *child) {
	if (!FUNC1(child->impl == &popup_impl,
			"Expected an xdg_shell popup")) {
		return;
	}
	struct sway_xdg_popup *popup = (struct sway_xdg_popup *)child;
	FUNC2(&popup->new_popup.link);
	FUNC2(&popup->destroy.link);
	FUNC0(popup);
}