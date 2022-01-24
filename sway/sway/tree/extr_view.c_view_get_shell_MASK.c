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
struct sway_view {int type; } ;

/* Variables and functions */
#define  SWAY_VIEW_XDG_SHELL 129 
#define  SWAY_VIEW_XWAYLAND 128 

const char *FUNC0(struct sway_view *view) {
	switch(view->type) {
	case SWAY_VIEW_XDG_SHELL:
		return "xdg_shell";
#if HAVE_XWAYLAND
	case SWAY_VIEW_XWAYLAND:
		return "xwayland";
#endif
	}
	return "unknown";
}