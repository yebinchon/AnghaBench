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
struct sway_idle_inhibitor_v1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  destroy ; 
 int /*<<< orphan*/  FUNC0 (struct sway_idle_inhibitor_v1*) ; 
 struct sway_idle_inhibitor_v1* inhibitor ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct sway_idle_inhibitor_v1* FUNC2 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wl_listener *listener, void *data) {
	struct sway_idle_inhibitor_v1 *inhibitor =
		FUNC2(listener, inhibitor, destroy);
	FUNC1(SWAY_DEBUG, "Sway idle inhibitor destroyed");
	FUNC0(inhibitor);
}