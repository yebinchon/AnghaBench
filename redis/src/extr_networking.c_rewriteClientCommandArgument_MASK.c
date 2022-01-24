#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_11__ {int argc; int /*<<< orphan*/ * cmd; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC4 (TYPE_1__**,int) ; 

void FUNC5(client *c, int i, robj *newval) {
    robj *oldval;

    if (i >= c->argc) {
        c->argv = FUNC4(c->argv,sizeof(robj*)*(i+1));
        c->argc = i+1;
        c->argv[i] = NULL;
    }
    oldval = c->argv[i];
    c->argv[i] = newval;
    FUNC1(newval);
    if (oldval) FUNC0(oldval);

    /* If this is the command name make sure to fix c->cmd. */
    if (i == 0) {
        c->cmd = FUNC2(c->argv[0]->ptr);
        FUNC3(c,NULL,c->cmd != NULL);
    }
}