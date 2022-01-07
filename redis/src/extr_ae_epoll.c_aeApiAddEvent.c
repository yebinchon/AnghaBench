
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int events; int member_0; } ;
struct TYPE_8__ {TYPE_2__* events; TYPE_4__* apidata; } ;
typedef TYPE_3__ aeEventLoop ;
struct TYPE_9__ {int epfd; } ;
typedef TYPE_4__ aeApiState ;
struct TYPE_7__ {int mask; } ;


 int AE_NONE ;
 int AE_READABLE ;
 int AE_WRITABLE ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLL_CTL_ADD ;
 int EPOLL_CTL_MOD ;
 int epoll_ctl (int ,int,int,struct epoll_event*) ;

__attribute__((used)) static int aeApiAddEvent(aeEventLoop *eventLoop, int fd, int mask) {
    aeApiState *state = eventLoop->apidata;
    struct epoll_event ee = {0};


    int op = eventLoop->events[fd].mask == AE_NONE ?
            EPOLL_CTL_ADD : EPOLL_CTL_MOD;

    ee.events = 0;
    mask |= eventLoop->events[fd].mask;
    if (mask & AE_READABLE) ee.events |= EPOLLIN;
    if (mask & AE_WRITABLE) ee.events |= EPOLLOUT;
    ee.data.fd = fd;
    if (epoll_ctl(state->epfd,op,fd,&ee) == -1) return -1;
    return 0;
}
