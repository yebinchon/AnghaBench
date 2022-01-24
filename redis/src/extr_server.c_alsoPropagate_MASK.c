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
struct TYPE_2__ {int /*<<< orphan*/  also_propagate; scalar_t__ loading; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct redisCommand*,int,int /*<<< orphan*/ **,int,int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/ ** FUNC2 (int) ; 

void FUNC3(struct redisCommand *cmd, int dbid, robj **argv, int argc,
                   int target)
{
    robj **argvcopy;
    int j;

    if (server.loading) return; /* No propagation during loading. */

    argvcopy = FUNC2(sizeof(robj*)*argc);
    for (j = 0; j < argc; j++) {
        argvcopy[j] = argv[j];
        FUNC0(argv[j]);
    }
    FUNC1(&server.also_propagate,cmd,dbid,argvcopy,argc,target);
}