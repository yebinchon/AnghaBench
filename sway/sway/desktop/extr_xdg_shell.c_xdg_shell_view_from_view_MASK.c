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
struct sway_xdg_shell_view {int dummy; } ;
struct sway_view {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ SWAY_VIEW_XDG_SHELL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static struct sway_xdg_shell_view *FUNC1(
		struct sway_view *view) {
	if (!FUNC0(view->type == SWAY_VIEW_XDG_SHELL,
			"Expected xdg_shell view")) {
		return NULL;
	}
	return (struct sway_xdg_shell_view *)view;
}