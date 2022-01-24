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
 int ENOENT ; 
 int IN_CREATE ; 
 int IN_DELETE ; 
 int IN_ISDIR ; 
 int IN_MOVED_TO ; 
 int errno ; 
 int FUNC0 (int,char*,int) ; 

__attribute__((used)) static int FUNC1(int fd) {
        int k;

        k = FUNC0(fd, "/run/systemd/netif/links/", IN_MOVED_TO|IN_DELETE);
        if (k >= 0)
                return 0;
        else if (errno != ENOENT)
                return -errno;

        k = FUNC0(fd, "/run/systemd/netif/", IN_CREATE|IN_ISDIR);
        if (k >= 0)
                return 0;
        else if (errno != ENOENT)
                return -errno;

        k = FUNC0(fd, "/run/systemd/", IN_CREATE|IN_ISDIR);
        if (k < 0)
                return -errno;

        return 0;
}