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
struct kevent {int dummy; } ;
struct TYPE_5__ {int setsize; TYPE_2__* apidata; } ;
typedef  TYPE_1__ aeEventLoop ;
struct TYPE_6__ {int kqfd; struct TYPE_6__* events; } ;
typedef  TYPE_2__ aeApiState ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(aeEventLoop *eventLoop) {
    aeApiState *state = FUNC2(sizeof(aeApiState));

    if (!state) return -1;
    state->events = FUNC2(sizeof(struct kevent)*eventLoop->setsize);
    if (!state->events) {
        FUNC1(state);
        return -1;
    }
    state->kqfd = FUNC0();
    if (state->kqfd == -1) {
        FUNC1(state->events);
        FUNC1(state);
        return -1;
    }
    eventLoop->apidata = state;
    return 0;
}