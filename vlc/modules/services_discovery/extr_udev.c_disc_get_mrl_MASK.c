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
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 char* FUNC2 (struct udev_device*) ; 
 char* FUNC3 (struct udev_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*,char const*) ; 

__attribute__((used)) static char *FUNC7 (struct udev_device *dev)
{
    const char *node = FUNC2 (dev);
    const char *val;

    val = FUNC3 (dev, "ID_CDROM");
    if (val == NULL)
        return NULL; /* Ignore non-optical block devices */

    val = FUNC3 (dev, "ID_CDROM_MEDIA_STATE");
    if (val == NULL)
    {   /* Force probing of the disc in the drive if any. */
        int fd = FUNC5 (node, O_RDONLY);
        if (fd != -1)
            FUNC4 (fd);
        return NULL;
    }
    if (!FUNC1 (val, "blank"))
        return NULL; /* ignore empty drives and virgin recordable discs */

    const char *scheme = NULL;
    val = FUNC3 (dev,
                                          "ID_CDROM_MEDIA_TRACK_COUNT_AUDIO");
    if (val && FUNC0 (val))
        scheme = "cdda"; /* Audio CD rather than file system */
    val = FUNC3 (dev, "ID_CDROM_MEDIA_DVD");
    if (val && FUNC0 (val))
        scheme = "dvd";

    val = FUNC3 (dev, "ID_CDROM_MEDIA_BD");
    if (val && FUNC0 (val))
        scheme = "bluray";
#ifdef LOL
    val = udev_device_get_property_value (dev, "ID_CDROM_MEDIA_HDDVD");
    if (val && atoi (val))
        scheme = "hddvd";
#endif

    /* We didn't get any property that could tell we have optical disc
       that we can play */
    if (scheme == NULL)
        return NULL;

    return FUNC6 (node, scheme);
}