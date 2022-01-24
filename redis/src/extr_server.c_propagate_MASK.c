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
struct redisCommand {int dummy; } ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_2__ {scalar_t__ aof_state; int /*<<< orphan*/  slaves; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int PROPAGATE_AOF ; 
 int PROPAGATE_REPL ; 
 int /*<<< orphan*/  FUNC0 (struct redisCommand*,int,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int) ; 
 TYPE_1__ server ; 

void FUNC2(struct redisCommand *cmd, int dbid, robj **argv, int argc,
               int flags)
{
    if (server.aof_state != AOF_OFF && flags & PROPAGATE_AOF)
        FUNC0(cmd,dbid,argv,argc);
    if (flags & PROPAGATE_REPL)
        FUNC1(server.slaves,dbid,argv,argc);
}