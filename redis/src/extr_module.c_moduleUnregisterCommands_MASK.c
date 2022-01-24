#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct redisCommand {scalar_t__ proc; scalar_t__ getkeys_proc; } ;
struct RedisModule {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_5__ {int /*<<< orphan*/  orig_commands; int /*<<< orphan*/  commands; } ;
struct TYPE_4__ {struct TYPE_4__* rediscmd; struct RedisModule* module; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ RedisModuleCommandProxy ;

/* Variables and functions */
 scalar_t__ RedisModuleCommandDispatcher ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 struct redisCommand* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(struct RedisModule *module) {
    /* Unregister all the commands registered by this module. */
    dictIterator *di = FUNC1(server.commands);
    dictEntry *de;
    while ((de = FUNC3(di)) != NULL) {
        struct redisCommand *cmd = FUNC2(de);
        if (cmd->proc == RedisModuleCommandDispatcher) {
            RedisModuleCommandProxy *cp =
                (void*)(unsigned long)cmd->getkeys_proc;
            sds cmdname = cp->rediscmd->name;
            if (cp->module == module) {
                FUNC0(server.commands,cmdname);
                FUNC0(server.orig_commands,cmdname);
                FUNC5(cmdname);
                FUNC6(cp->rediscmd);
                FUNC6(cp);
            }
        }
    }
    FUNC4(di);
}