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
struct wlr_backend {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wlr_backend*) ; 
 scalar_t__ FUNC1 (struct wlr_backend*) ; 
 int /*<<< orphan*/  FUNC2 (struct wlr_backend*) ; 
 int /*<<< orphan*/  FUNC3 (struct wlr_backend*) ; 

__attribute__((used)) static void FUNC4(struct wlr_backend *backend, void *data) {
	bool *done = data;
	if (*done) {
		return;
	}

	if (FUNC0(backend)) {
		FUNC2(backend);
		*done = true;
	}
#if WLR_HAS_X11_BACKEND
	else if (wlr_backend_is_x11(backend)) {
		wlr_x11_output_create(backend);
		*done = true;
	}
#endif
}