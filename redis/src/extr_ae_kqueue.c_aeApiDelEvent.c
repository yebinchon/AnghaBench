
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kevent {int dummy; } ;
struct TYPE_4__ {TYPE_2__* apidata; } ;
typedef TYPE_1__ aeEventLoop ;
struct TYPE_5__ {int kqfd; } ;
typedef TYPE_2__ aeApiState ;


 int AE_READABLE ;
 int AE_WRITABLE ;
 int EVFILT_READ ;
 int EVFILT_WRITE ;
 int EV_DELETE ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,int *) ;
 int kevent (int ,struct kevent*,int,int *,int ,int *) ;

__attribute__((used)) static void aeApiDelEvent(aeEventLoop *eventLoop, int fd, int mask) {
    aeApiState *state = eventLoop->apidata;
    struct kevent ke;

    if (mask & AE_READABLE) {
        EV_SET(&ke, fd, EVFILT_READ, EV_DELETE, 0, 0, ((void*)0));
        kevent(state->kqfd, &ke, 1, ((void*)0), 0, ((void*)0));
    }
    if (mask & AE_WRITABLE) {
        EV_SET(&ke, fd, EVFILT_WRITE, EV_DELETE, 0, 0, ((void*)0));
        kevent(state->kqfd, &ke, 1, ((void*)0), 0, ((void*)0));
    }
}
