
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int aeFileProc ;
struct TYPE_5__ {int mask; void* clientData; int * wfileProc; int * rfileProc; } ;
typedef TYPE_1__ aeFileEvent ;
struct TYPE_6__ {int setsize; int maxfd; TYPE_1__* events; } ;
typedef TYPE_2__ aeEventLoop ;


 int AE_ERR ;
 int AE_OK ;
 int AE_READABLE ;
 int AE_WRITABLE ;
 int ERANGE ;
 int aeApiAddEvent (TYPE_2__*,int,int) ;
 int errno ;

int aeCreateFileEvent(aeEventLoop *eventLoop, int fd, int mask,
        aeFileProc *proc, void *clientData)
{
    if (fd >= eventLoop->setsize) {
        errno = ERANGE;
        return AE_ERR;
    }
    aeFileEvent *fe = &eventLoop->events[fd];

    if (aeApiAddEvent(eventLoop, fd, mask) == -1)
        return AE_ERR;
    fe->mask |= mask;
    if (mask & AE_READABLE) fe->rfileProc = proc;
    if (mask & AE_WRITABLE) fe->wfileProc = proc;
    fe->clientData = clientData;
    if (fd > eventLoop->maxfd)
        eventLoop->maxfd = fd;
    return AE_OK;
}
