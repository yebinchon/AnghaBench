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
struct wl_listener {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct TYPE_3__ {int /*<<< orphan*/  link; } ;
struct sway_tablet_tool {TYPE_2__ set_cursor; TYPE_1__ tool_destroy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_tablet_tool*) ; 
 struct sway_tablet_tool* tool ; 
 int /*<<< orphan*/  tool_destroy ; 
 struct sway_tablet_tool* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wl_listener *listener, void *data) {
	struct sway_tablet_tool *tool =
		FUNC1(listener, tool, tool_destroy);

	FUNC2(&tool->tool_destroy.link);
	FUNC2(&tool->set_cursor.link);

	FUNC0(tool);
}