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
typedef  int /*<<< orphan*/  sd_device_enumerator ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char*) ; 

__attribute__((used)) static int FUNC4(sd_device_enumerator *enumerator) {
        int r = 0;

        FUNC2("sd-device-enumerator: Scan all dirs");

        if (FUNC0("/sys/subsystem", F_OK) >= 0) {
                /* we have /subsystem/, forget all the old stuff */
                r = FUNC1(enumerator, "subsystem", "devices", NULL);
                if (r < 0)
                        return FUNC3(r, "sd-device-enumerator: Failed to scan /sys/subsystem: %m");
        } else {
                int k;

                k = FUNC1(enumerator, "bus", "devices", NULL);
                if (k < 0) {
                        FUNC3(k, "sd-device-enumerator: Failed to scan /sys/bus: %m");
                        r = k;
                }

                k = FUNC1(enumerator, "class", NULL, NULL);
                if (k < 0) {
                        FUNC3(k, "sd-device-enumerator: Failed to scan /sys/class: %m");
                        r = k;
                }
        }

        return r;
}