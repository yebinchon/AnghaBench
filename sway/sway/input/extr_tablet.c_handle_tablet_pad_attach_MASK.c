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
struct wlr_tablet_tool {struct sway_tablet_tool* data; } ;
struct wl_listener {int dummy; } ;
struct sway_tablet_tool {int /*<<< orphan*/  tablet; } ;
struct sway_tablet_pad {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  attach ; 
 int /*<<< orphan*/  FUNC0 (struct sway_tablet_pad*,int /*<<< orphan*/ ) ; 
 struct sway_tablet_pad* pad ; 
 struct sway_tablet_pad* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener,
		void *data) {
	struct sway_tablet_pad *pad = FUNC1(listener, pad, attach);
	struct wlr_tablet_tool *wlr_tool = data;
	struct sway_tablet_tool *tool = wlr_tool->data;

	if (!tool) {
		return;
	}

	FUNC0(pad, tool->tablet);
}