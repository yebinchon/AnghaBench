#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct redisCommand {int flags; int /*<<< orphan*/  keystep; int /*<<< orphan*/  lastkey; int /*<<< orphan*/  firstkey; scalar_t__ getkeys_proc; int /*<<< orphan*/  arity; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ADMIN ; 
 int /*<<< orphan*/  CMD_ASKING ; 
 int /*<<< orphan*/  CMD_DENYOOM ; 
 int /*<<< orphan*/  CMD_FAST ; 
 int /*<<< orphan*/  CMD_LOADING ; 
 int CMD_MODULE ; 
 int CMD_MODULE_GETKEYS ; 
 int /*<<< orphan*/  CMD_NOSCRIPT ; 
 int /*<<< orphan*/  CMD_PUBSUB ; 
 int /*<<< orphan*/  CMD_RANDOM ; 
 int /*<<< orphan*/  CMD_READONLY ; 
 int /*<<< orphan*/  CMD_SKIP_MONITOR ; 
 int /*<<< orphan*/  CMD_SKIP_SLOWLOG ; 
 int /*<<< orphan*/  CMD_SORT_FOR_SCRIPT ; 
 int /*<<< orphan*/  CMD_STALE ; 
 int /*<<< orphan*/  CMD_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct redisCommand*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct redisCommand*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,int) ; 

void FUNC9(client *c, struct redisCommand *cmd) {
    if (!cmd) {
        FUNC6(c);
    } else {
        /* We are adding: command name, arg count, flags, first, last, offset, categories */
        FUNC0(c, 7);
        FUNC1(c, cmd->name);
        FUNC5(c, cmd->arity);

        int flagcount = 0;
        void *flaglen = FUNC4(c);
        flagcount += FUNC3(c,cmd,CMD_WRITE, "write");
        flagcount += FUNC3(c,cmd,CMD_READONLY, "readonly");
        flagcount += FUNC3(c,cmd,CMD_DENYOOM, "denyoom");
        flagcount += FUNC3(c,cmd,CMD_ADMIN, "admin");
        flagcount += FUNC3(c,cmd,CMD_PUBSUB, "pubsub");
        flagcount += FUNC3(c,cmd,CMD_NOSCRIPT, "noscript");
        flagcount += FUNC3(c,cmd,CMD_RANDOM, "random");
        flagcount += FUNC3(c,cmd,CMD_SORT_FOR_SCRIPT,"sort_for_script");
        flagcount += FUNC3(c,cmd,CMD_LOADING, "loading");
        flagcount += FUNC3(c,cmd,CMD_STALE, "stale");
        flagcount += FUNC3(c,cmd,CMD_SKIP_MONITOR, "skip_monitor");
        flagcount += FUNC3(c,cmd,CMD_SKIP_SLOWLOG, "skip_slowlog");
        flagcount += FUNC3(c,cmd,CMD_ASKING, "asking");
        flagcount += FUNC3(c,cmd,CMD_FAST, "fast");
        if ((cmd->getkeys_proc && !(cmd->flags & CMD_MODULE)) ||
            cmd->flags & CMD_MODULE_GETKEYS)
        {
            FUNC7(c, "movablekeys");
            flagcount += 1;
        }
        FUNC8(c, flaglen, flagcount);

        FUNC5(c, cmd->firstkey);
        FUNC5(c, cmd->lastkey);
        FUNC5(c, cmd->keystep);

        FUNC2(c,cmd);
    }
}