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
struct wlr_output_configuration_v1 {int dummy; } ;
struct wl_listener {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlr_output_configuration_v1*) ; 
 int /*<<< orphan*/  FUNC1 (struct wlr_output_configuration_v1*) ; 

void FUNC2(struct wl_listener *listener, void *data) {
	struct wlr_output_configuration_v1 *config = data;

	// TODO: implement test-only mode
	FUNC1(config);
	FUNC0(config);
}