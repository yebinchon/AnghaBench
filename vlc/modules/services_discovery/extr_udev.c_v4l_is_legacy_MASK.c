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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 char* FUNC1 (struct udev_device*,char*) ; 

__attribute__((used)) static bool FUNC2 (struct udev_device *dev)
{
    const char *version;

    version = FUNC1 (dev, "ID_V4L_VERSION");
    return (version != NULL) && !FUNC0 (version, "1");
}