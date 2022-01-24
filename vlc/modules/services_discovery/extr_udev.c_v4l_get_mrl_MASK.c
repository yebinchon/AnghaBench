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
struct udev_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*) ; 
 char* FUNC1 (struct udev_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct udev_device*) ; 
 scalar_t__ FUNC3 (struct udev_device*) ; 

__attribute__((used)) static char *FUNC4 (struct udev_device *dev)
{
    /* Determine media location */
    if (FUNC3 (dev) || !FUNC2 (dev))
        return NULL;

    const char *node = FUNC1 (dev);
    char *mrl;

    if (FUNC0 (&mrl, "v4l2://%s", node) == -1)
        mrl = NULL;
    return mrl;
}