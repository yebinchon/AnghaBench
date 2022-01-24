#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  aeTimeProc ;
struct TYPE_5__ {long long id; struct TYPE_5__* prev; struct TYPE_5__* next; void* clientData; int /*<<< orphan*/ * finalizerProc; int /*<<< orphan*/ * timeProc; int /*<<< orphan*/  when_ms; int /*<<< orphan*/  when_sec; } ;
typedef  TYPE_1__ aeTimeEvent ;
struct TYPE_6__ {TYPE_1__* timeEventHead; int /*<<< orphan*/  timeEventNextId; } ;
typedef  TYPE_2__ aeEventLoop ;
typedef  int /*<<< orphan*/  aeEventFinalizerProc ;

/* Variables and functions */
 long long AE_ERR ; 
 int /*<<< orphan*/  FUNC0 (long long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 

long long FUNC2(aeEventLoop *eventLoop, long long milliseconds,
        aeTimeProc *proc, void *clientData,
        aeEventFinalizerProc *finalizerProc)
{
    long long id = eventLoop->timeEventNextId++;
    aeTimeEvent *te;

    te = FUNC1(sizeof(*te));
    if (te == NULL) return AE_ERR;
    te->id = id;
    FUNC0(milliseconds,&te->when_sec,&te->when_ms);
    te->timeProc = proc;
    te->finalizerProc = finalizerProc;
    te->clientData = clientData;
    te->prev = NULL;
    te->next = eventLoop->timeEventHead;
    if (te->next)
        te->next->prev = te;
    eventLoop->timeEventHead = te;
    return id;
}