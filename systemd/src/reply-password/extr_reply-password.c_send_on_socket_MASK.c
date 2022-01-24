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
union sockaddr_union {int /*<<< orphan*/  sa; int /*<<< orphan*/  un; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC4(int fd, const char *socket_name, const void *packet, size_t size) {
        union sockaddr_union sa = {};
        int salen;

        FUNC0(fd >= 0);
        FUNC0(socket_name);
        FUNC0(packet);

        salen = FUNC3(&sa.un, socket_name);
        if (salen < 0)
                return FUNC1(salen, "Specified socket path for AF_UNIX socket invalid, refusing: %s", socket_name);

        if (FUNC2(fd, packet, size, MSG_NOSIGNAL, &sa.sa, salen) < 0)
                return FUNC1(errno, "Failed to send: %m");

        return 0;
}