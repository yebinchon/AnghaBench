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
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(int fd, short mask, void *data) {
	sd_bus *bus = data;
	int ret;
	while ((ret = FUNC0(bus, NULL)) > 0) {
		// This space intentionally left blank
	}
	if (ret < 0) {
		FUNC2(SWAY_ERROR, "Failed to process bus: %s", FUNC1(-ret));
	}
}