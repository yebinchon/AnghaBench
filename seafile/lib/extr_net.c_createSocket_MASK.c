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
typedef  int /*<<< orphan*/  nodelay ;
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static evutil_socket_t
FUNC5 (int family, int nonblock)
{
    evutil_socket_t fd;
    int ret;

    fd = FUNC4 (family, SOCK_STREAM, 0);

    if (fd < 0) {
        FUNC0("create Socket failed %d\n", fd);
    } else if (nonblock) {
        int nodelay = 1;

        fd = FUNC2( fd );

        ret = FUNC3 (fd, IPPROTO_TCP, TCP_NODELAY,
                          (char *)&nodelay, sizeof(nodelay));
        if (ret < 0) {
            FUNC0("setsockopt failed\n");
            FUNC1(fd);
            return -1;
        }
    }

    return fd;
}