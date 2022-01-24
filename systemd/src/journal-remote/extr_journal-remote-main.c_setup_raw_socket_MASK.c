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
typedef  int /*<<< orphan*/  RemoteServer ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SOCK_CLOEXEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(RemoteServer *s, const char *address) {
        int fd;

        fd = FUNC1(LOG_INFO, address, SOCK_STREAM, SOCK_CLOEXEC);
        if (fd < 0)
                return fd;

        return FUNC0(s, fd);
}