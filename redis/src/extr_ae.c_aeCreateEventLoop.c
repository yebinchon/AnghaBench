
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int aeFiredEvent ;
typedef int aeFileEvent ;
struct TYPE_5__ {int setsize; int maxfd; struct TYPE_5__* fired; struct TYPE_5__* events; int mask; scalar_t__ flags; int * aftersleep; int * beforesleep; scalar_t__ stop; scalar_t__ timeEventNextId; int * timeEventHead; int lastTime; } ;
typedef TYPE_1__ aeEventLoop ;


 int AE_NONE ;
 int aeApiCreate (TYPE_1__*) ;
 int time (int *) ;
 int zfree (TYPE_1__*) ;
 void* zmalloc (int) ;

aeEventLoop *aeCreateEventLoop(int setsize) {
    aeEventLoop *eventLoop;
    int i;

    if ((eventLoop = zmalloc(sizeof(*eventLoop))) == ((void*)0)) goto err;
    eventLoop->events = zmalloc(sizeof(aeFileEvent)*setsize);
    eventLoop->fired = zmalloc(sizeof(aeFiredEvent)*setsize);
    if (eventLoop->events == ((void*)0) || eventLoop->fired == ((void*)0)) goto err;
    eventLoop->setsize = setsize;
    eventLoop->lastTime = time(((void*)0));
    eventLoop->timeEventHead = ((void*)0);
    eventLoop->timeEventNextId = 0;
    eventLoop->stop = 0;
    eventLoop->maxfd = -1;
    eventLoop->beforesleep = ((void*)0);
    eventLoop->aftersleep = ((void*)0);
    eventLoop->flags = 0;
    if (aeApiCreate(eventLoop) == -1) goto err;


    for (i = 0; i < setsize; i++)
        eventLoop->events[i].mask = AE_NONE;
    return eventLoop;

err:
    if (eventLoop) {
        zfree(eventLoop->events);
        zfree(eventLoop->fired);
        zfree(eventLoop);
    }
    return ((void*)0);
}
