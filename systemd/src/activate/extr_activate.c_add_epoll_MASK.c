#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC3(int epoll_fd, int fd) {
        struct epoll_event ev = {
                .events = EPOLLIN,
                .data.fd = fd,
        };

        FUNC0(epoll_fd >= 0);
        FUNC0(fd >= 0);

        if (FUNC1(epoll_fd, EPOLL_CTL_ADD, fd, &ev) < 0)
                return FUNC2(errno, "Failed to add event on epoll fd:%d for fd:%d: %m", epoll_fd, fd);

        return 0;
}