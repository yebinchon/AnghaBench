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
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int track_cb_called_x ; 

__attribute__((used)) static int FUNC5(sd_bus_track *t, void *userdata) {

        FUNC1("TRACK CB X");

        FUNC0(!track_cb_called_x);
        track_cb_called_x = true;

        /* This means b's name disappeared. Let's now disconnect, to make sure the track handling on disconnect works
         * as it should. */

        FUNC0(FUNC4(FUNC2(FUNC3(t)), SHUT_RDWR) >= 0);
        return 1;
}