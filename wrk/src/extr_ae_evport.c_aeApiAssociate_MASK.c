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
 int AE_READABLE ; 
 int AE_WRITABLE ; 
 int EAGAIN ; 
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  PORT_SOURCE_FD ; 
 int errno ; 
 scalar_t__ evport_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int,int,void*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(const char *where, int portfd, int fd, int mask) {
    int events = 0;
    int rv, err;

    if (mask & AE_READABLE)
        events |= POLLIN;
    if (mask & AE_WRITABLE)
        events |= POLLOUT;

    if (evport_debug)
        FUNC0(stderr, "%s: port_associate(%d, 0x%x) = ", where, fd, events);

    rv = FUNC1(portfd, PORT_SOURCE_FD, fd, events,
        (void *)(uintptr_t)mask);
    err = errno;

    if (evport_debug)
        FUNC0(stderr, "%d (%s)\n", rv, rv == 0 ? "no error" : FUNC2(err));

    if (rv == -1) {
        FUNC0(stderr, "%s: port_associate: %s\n", where, FUNC2(err));

        if (err == EAGAIN)
            FUNC0(stderr, "aeApiAssociate: event port limit exceeded.");
    }

    return rv;
}