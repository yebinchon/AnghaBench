
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* beforesleep ) (TYPE_1__*) ;scalar_t__ stop; } ;
typedef TYPE_1__ aeEventLoop ;


 int AE_ALL_EVENTS ;
 int aeProcessEvents (TYPE_1__*,int ) ;
 int stub1 (TYPE_1__*) ;

void aeMain(aeEventLoop *eventLoop) {
    eventLoop->stop = 0;
    while (!eventLoop->stop) {
        if (eventLoop->beforesleep != ((void*)0))
            eventLoop->beforesleep(eventLoop);
        aeProcessEvents(eventLoop, AE_ALL_EVENTS);
    }
}
