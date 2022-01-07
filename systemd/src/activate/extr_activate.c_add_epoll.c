
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int events; } ;


 int EPOLLIN ;
 int EPOLL_CTL_ADD ;
 int assert (int) ;
 scalar_t__ epoll_ctl (int,int ,int,struct epoll_event*) ;
 int errno ;
 int log_error_errno (int ,char*,int,int) ;

__attribute__((used)) static int add_epoll(int epoll_fd, int fd) {
        struct epoll_event ev = {
                .events = EPOLLIN,
                .data.fd = fd,
        };

        assert(epoll_fd >= 0);
        assert(fd >= 0);

        if (epoll_ctl(epoll_fd, EPOLL_CTL_ADD, fd, &ev) < 0)
                return log_error_errno(errno, "Failed to add event on epoll fd:%d for fd:%d: %m", epoll_fd, fd);

        return 0;
}
