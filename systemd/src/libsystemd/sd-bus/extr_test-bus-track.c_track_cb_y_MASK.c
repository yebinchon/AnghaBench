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
typedef  int /*<<< orphan*/  sd_bus_track ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int track_cb_called_y ; 

__attribute__((used)) static int FUNC5(sd_bus_track *t, void *userdata) {
        int r;

        FUNC1("TRACK CB Y");

        FUNC0(!track_cb_called_y);
        track_cb_called_y = true;

        /* We got disconnected, let's close everything */

        r = FUNC4(FUNC2(FUNC3(t)), EXIT_SUCCESS);
        FUNC0(r >= 0);

        return 0;
}