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

/* Variables and functions */
#define  EACCES 131 
#define  ENOENT 130 
#define  ENOEXEC 129 
#define  ENXIO 128 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char const* FUNC0 (int /*<<< orphan*/ ,char*) ; 

const char *
FUNC1(int error)
{
	switch (error) {
	case ENXIO:
		return (FUNC0(TEXT_DOMAIN, "The ZFS modules are not "
		    "loaded.\nTry running '/sbin/modprobe zfs' as root "
		    "to load them."));
	case ENOENT:
		return (FUNC0(TEXT_DOMAIN, "/dev/zfs and /proc/self/mounts "
		    "are required.\nTry running 'udevadm trigger' and 'mount "
		    "-t proc proc /proc' as root."));
	case ENOEXEC:
		return (FUNC0(TEXT_DOMAIN, "The ZFS modules cannot be "
		    "auto-loaded.\nTry running '/sbin/modprobe zfs' as "
		    "root to manually load them."));
	case EACCES:
		return (FUNC0(TEXT_DOMAIN, "Permission denied the "
		    "ZFS utilities must be run as root."));
	default:
		return (FUNC0(TEXT_DOMAIN, "Failed to initialize the "
		    "libzfs library."));
	}
}