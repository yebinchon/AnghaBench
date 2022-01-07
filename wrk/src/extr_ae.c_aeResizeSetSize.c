
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int aeFiredEvent ;
typedef int aeFileEvent ;
struct TYPE_5__ {int setsize; int maxfd; TYPE_2__* events; TYPE_2__* fired; } ;
typedef TYPE_1__ aeEventLoop ;
struct TYPE_6__ {int mask; } ;


 int AE_ERR ;
 int AE_NONE ;
 int AE_OK ;
 int aeApiResize (TYPE_1__*,int) ;
 void* zrealloc (TYPE_2__*,int) ;

int aeResizeSetSize(aeEventLoop *eventLoop, int setsize) {
    int i;

    if (setsize == eventLoop->setsize) return AE_OK;
    if (eventLoop->maxfd >= setsize) return AE_ERR;
    if (aeApiResize(eventLoop,setsize) == -1) return AE_ERR;

    eventLoop->events = zrealloc(eventLoop->events,sizeof(aeFileEvent)*setsize);
    eventLoop->fired = zrealloc(eventLoop->fired,sizeof(aeFiredEvent)*setsize);
    eventLoop->setsize = setsize;



    for (i = eventLoop->maxfd+1; i < setsize; i++)
        eventLoop->events[i].mask = AE_NONE;
    return AE_OK;
}
