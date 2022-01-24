#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_10__ {int argc; int /*<<< orphan*/ * argv; TYPE_2__* cmd; } ;
typedef  TYPE_3__ multiCmd ;
struct TYPE_8__ {int count; int /*<<< orphan*/  cmd_flags; TYPE_3__* commands; } ;
struct TYPE_11__ {int argc; TYPE_2__* cmd; TYPE_1__ mstate; int /*<<< orphan*/  argv; } ;
typedef  TYPE_4__ client ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,int) ; 

void FUNC4(client *c) {
    multiCmd *mc;
    int j;

    c->mstate.commands = FUNC3(c->mstate.commands,
            sizeof(multiCmd)*(c->mstate.count+1));
    mc = c->mstate.commands+c->mstate.count;
    mc->cmd = c->cmd;
    mc->argc = c->argc;
    mc->argv = FUNC2(sizeof(robj*)*c->argc);
    FUNC1(mc->argv,c->argv,sizeof(robj*)*c->argc);
    for (j = 0; j < c->argc; j++)
        FUNC0(mc->argv[j]);
    c->mstate.count++;
    c->mstate.cmd_flags |= c->cmd->flags;
}