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
typedef  int /*<<< orphan*/  uint32_t ;
struct wl_callback {int dummy; } ;
struct swaybar_output {int frame_scheduled; int dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct swaybar_output*) ; 
 int /*<<< orphan*/  FUNC1 (struct wl_callback*) ; 

__attribute__((used)) static void FUNC2(void *data, struct wl_callback *callback,
		uint32_t time) {
	FUNC1(callback);
	struct swaybar_output *output = data;
	output->frame_scheduled = false;
	if (output->dirty) {
		FUNC0(output);
		output->dirty = false;
	}
}