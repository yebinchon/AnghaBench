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
 scalar_t__ FUNC0 (char const*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static bool FUNC2(const char *path) {

        /* Returns "true" for all mounts we insist to mount on our own, and hence ignore the OCI data. */

        if (FUNC0(path,
                        "/dev",
                        "/dev/mqueue",
                        "/dev/pts",
                        "/dev/shm",
                        "/proc",
                        "/proc/acpi",
                        "/proc/apm",
                        "/proc/asound",
                        "/proc/bus",
                        "/proc/fs",
                        "/proc/irq",
                        "/proc/kallsyms",
                        "/proc/kcore",
                        "/proc/keys",
                        "/proc/scsi",
                        "/proc/sys",
                        "/proc/sys/net",
                        "/proc/sysrq-trigger",
                        "/proc/timer_list",
                        "/run",
                        "/sys",
                        "/sys",
                        "/sys/fs/selinux",
                        "/tmp"))
                return true;

        /* Similar, skip the whole /sys/fs/cgroups subtree */
        if (FUNC1(path, "/sys/fs/cgroup"))
                return true;

        return false;
}