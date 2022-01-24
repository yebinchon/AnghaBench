#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ devmode; } ;
typedef  TYPE_1__ sd_device ;
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2(sd_device *device, mode_t *mode) {
        int r;

        FUNC0(device);

        r = FUNC1(device);
        if (r < 0)
                return r;

        if (device->devmode == (mode_t) -1)
                return -ENOENT;

        if (mode)
                *mode = device->devmode;

        return 0;
}