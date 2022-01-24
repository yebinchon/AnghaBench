#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int frontend; int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ dvb_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (dvb_device_t *d)
{
    if (d->frontend != -1)
        return 0;
    int fd = FUNC0 (d, "frontend", O_RDWR);
    if (fd == -1)
    {
        FUNC1 (d->obj, "cannot access frontend: %s", FUNC2(errno));
        return -1;
    }

    d->frontend = fd;
    return 0;
}