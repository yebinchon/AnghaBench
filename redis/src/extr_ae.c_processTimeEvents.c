
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_9__ {long when_sec; long long id; long when_ms; int (* timeProc ) (TYPE_3__*,long long,int ) ;struct TYPE_9__* next; int clientData; int (* finalizerProc ) (TYPE_3__*,int ) ;TYPE_1__* prev; } ;
typedef TYPE_2__ aeTimeEvent ;
struct TYPE_10__ {scalar_t__ lastTime; int timeEventNextId; TYPE_2__* timeEventHead; } ;
typedef TYPE_3__ aeEventLoop ;
struct TYPE_8__ {TYPE_2__* next; } ;


 long long AE_DELETED_EVENT_ID ;
 int AE_NOMORE ;
 int aeAddMillisecondsToNow (int,long*,long*) ;
 int aeGetTime (long*,long*) ;
 int stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*,long long,int ) ;
 scalar_t__ time (int *) ;
 int zfree (TYPE_2__*) ;

__attribute__((used)) static int processTimeEvents(aeEventLoop *eventLoop) {
    int processed = 0;
    aeTimeEvent *te;
    long long maxId;
    time_t now = time(((void*)0));
    if (now < eventLoop->lastTime) {
        te = eventLoop->timeEventHead;
        while(te) {
            te->when_sec = 0;
            te = te->next;
        }
    }
    eventLoop->lastTime = now;

    te = eventLoop->timeEventHead;
    maxId = eventLoop->timeEventNextId-1;
    while(te) {
        long now_sec, now_ms;
        long long id;


        if (te->id == AE_DELETED_EVENT_ID) {
            aeTimeEvent *next = te->next;
            if (te->prev)
                te->prev->next = te->next;
            else
                eventLoop->timeEventHead = te->next;
            if (te->next)
                te->next->prev = te->prev;
            if (te->finalizerProc)
                te->finalizerProc(eventLoop, te->clientData);
            zfree(te);
            te = next;
            continue;
        }






        if (te->id > maxId) {
            te = te->next;
            continue;
        }
        aeGetTime(&now_sec, &now_ms);
        if (now_sec > te->when_sec ||
            (now_sec == te->when_sec && now_ms >= te->when_ms))
        {
            int retval;

            id = te->id;
            retval = te->timeProc(eventLoop, id, te->clientData);
            processed++;
            if (retval != AE_NOMORE) {
                aeAddMillisecondsToNow(retval,&te->when_sec,&te->when_ms);
            } else {
                te->id = AE_DELETED_EVENT_ID;
            }
        }
        te = te->next;
    }
    return processed;
}
