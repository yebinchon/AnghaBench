#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sealed; scalar_t__ db_loaded; } ;
typedef  TYPE_1__ sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char const**) ; 
 int FUNC2 (TYPE_1__*,char const*) ; 
 char* FUNC3 (char*,char const*) ; 

int FUNC4(sd_device *device, bool force) {
        const char *id, *path;
        int r;

        FUNC0(device);

        if (device->db_loaded || (!force && device->sealed))
                return 0;

        r = FUNC1(device, &id);
        if (r < 0)
                return r;

        path = FUNC3("/run/udev/data/", id);

        return FUNC2(device, path);
}