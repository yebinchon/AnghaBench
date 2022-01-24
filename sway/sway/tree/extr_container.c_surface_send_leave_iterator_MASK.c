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
struct wlr_surface {int dummy; } ;
struct wlr_output {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlr_surface*,struct wlr_output*) ; 

__attribute__((used)) static void FUNC1(struct wlr_surface *surface,
		int x, int y, void *data) {
	struct wlr_output *wlr_output = data;
	FUNC0(surface, wlr_output);
}