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
struct wl_listener {int dummy; } ;
struct sway_xdg_popup {int /*<<< orphan*/  child; } ;

/* Variables and functions */
 int /*<<< orphan*/  destroy ; 
 struct sway_xdg_popup* popup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sway_xdg_popup* FUNC1 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wl_listener *listener, void *data) {
	struct sway_xdg_popup *popup = FUNC1(listener, popup, destroy);
	FUNC0(&popup->child);
}