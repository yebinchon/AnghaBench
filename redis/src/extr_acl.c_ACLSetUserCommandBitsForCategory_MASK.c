#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user ;
typedef  int uint64_t ;
struct redisCommand {int flags; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_2__ {int /*<<< orphan*/  orig_commands; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int CMD_MODULE ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 struct redisCommand* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 

int FUNC7(user *u, const char *category, int value) {
    uint64_t cflag = FUNC0(category);
    if (!cflag) return C_ERR;
    dictIterator *di = FUNC3(server.orig_commands);
    dictEntry *de;
    while ((de = FUNC5(di)) != NULL) {
        struct redisCommand *cmd = FUNC4(de);
        if (cmd->flags & CMD_MODULE) continue; /* Ignore modules commands. */
        if (cmd->flags & cflag) {
            FUNC2(u,cmd->id,value);
            FUNC1(u,cmd->id);
        }
    }
    FUNC6(di);
    return C_OK;
}