
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int aeTimeProc ;
struct TYPE_5__ {long long id; struct TYPE_5__* prev; struct TYPE_5__* next; void* clientData; int * finalizerProc; int * timeProc; int when_ms; int when_sec; } ;
typedef TYPE_1__ aeTimeEvent ;
struct TYPE_6__ {TYPE_1__* timeEventHead; int timeEventNextId; } ;
typedef TYPE_2__ aeEventLoop ;
typedef int aeEventFinalizerProc ;


 long long AE_ERR ;
 int aeAddMillisecondsToNow (long long,int *,int *) ;
 TYPE_1__* zmalloc (int) ;

long long aeCreateTimeEvent(aeEventLoop *eventLoop, long long milliseconds,
        aeTimeProc *proc, void *clientData,
        aeEventFinalizerProc *finalizerProc)
{
    long long id = eventLoop->timeEventNextId++;
    aeTimeEvent *te;

    te = zmalloc(sizeof(*te));
    if (te == ((void*)0)) return AE_ERR;
    te->id = id;
    aeAddMillisecondsToNow(milliseconds,&te->when_sec,&te->when_ms);
    te->timeProc = proc;
    te->finalizerProc = finalizerProc;
    te->clientData = clientData;
    te->prev = ((void*)0);
    te->next = eventLoop->timeEventHead;
    if (te->next)
        te->next->prev = te;
    eventLoop->timeEventHead = te;
    return id;
}
