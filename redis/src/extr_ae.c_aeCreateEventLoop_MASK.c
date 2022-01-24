#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  aeFiredEvent ;
typedef  int /*<<< orphan*/  aeFileEvent ;
struct TYPE_5__ {int setsize; int maxfd; struct TYPE_5__* fired; struct TYPE_5__* events; int /*<<< orphan*/  mask; scalar_t__ flags; int /*<<< orphan*/ * aftersleep; int /*<<< orphan*/ * beforesleep; scalar_t__ stop; scalar_t__ timeEventNextId; int /*<<< orphan*/ * timeEventHead; int /*<<< orphan*/  lastTime; } ;
typedef  TYPE_1__ aeEventLoop ;

/* Variables and functions */
 int /*<<< orphan*/  AE_NONE ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int) ; 

aeEventLoop *FUNC4(int setsize) {
    aeEventLoop *eventLoop;
    int i;

    if ((eventLoop = FUNC3(sizeof(*eventLoop))) == NULL) goto err;
    eventLoop->events = FUNC3(sizeof(aeFileEvent)*setsize);
    eventLoop->fired = FUNC3(sizeof(aeFiredEvent)*setsize);
    if (eventLoop->events == NULL || eventLoop->fired == NULL) goto err;
    eventLoop->setsize = setsize;
    eventLoop->lastTime = FUNC1(NULL);
    eventLoop->timeEventHead = NULL;
    eventLoop->timeEventNextId = 0;
    eventLoop->stop = 0;
    eventLoop->maxfd = -1;
    eventLoop->beforesleep = NULL;
    eventLoop->aftersleep = NULL;
    eventLoop->flags = 0;
    if (FUNC0(eventLoop) == -1) goto err;
    /* Events with mask == AE_NONE are not set. So let's initialize the
     * vector with it. */
    for (i = 0; i < setsize; i++)
        eventLoop->events[i].mask = AE_NONE;
    return eventLoop;

err:
    if (eventLoop) {
        FUNC2(eventLoop->events);
        FUNC2(eventLoop->fired);
        FUNC2(eventLoop);
    }
    return NULL;
}