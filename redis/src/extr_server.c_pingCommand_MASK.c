#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int argc; int flags; int resp; int /*<<< orphan*/ * argv; TYPE_1__* cmd; } ;
typedef  TYPE_2__ client ;
struct TYPE_11__ {int /*<<< orphan*/  pong; int /*<<< orphan*/ * mbulkhdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CLIENT_PUBSUB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ shared ; 

void FUNC4(client *c) {
    /* The command takes zero or one arguments. */
    if (c->argc > 2) {
        FUNC3(c,"wrong number of arguments for '%s' command",
            c->cmd->name);
        return;
    }

    if (c->flags & CLIENT_PUBSUB && c->resp == 2) {
        FUNC0(c,shared.mbulkhdr[2]);
        FUNC2(c,"pong",4);
        if (c->argc == 1)
            FUNC2(c,"",0);
        else
            FUNC1(c,c->argv[1]);
    } else {
        if (c->argc == 1)
            FUNC0(c,shared.pong);
        else
            FUNC1(c,c->argv[1]);
    }
}