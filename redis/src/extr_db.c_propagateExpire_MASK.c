#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ redisDb ;
struct TYPE_7__ {scalar_t__ aof_state; int /*<<< orphan*/  slaves; int /*<<< orphan*/  delCommand; } ;
struct TYPE_6__ {int /*<<< orphan*/ * del; int /*<<< orphan*/ * unlink; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 TYPE_3__ server ; 
 TYPE_2__ shared ; 

void FUNC4(redisDb *db, robj *key, int lazy) {
    robj *argv[2];

    argv[0] = lazy ? shared.unlink : shared.del;
    argv[1] = key;
    FUNC2(argv[0]);
    FUNC2(argv[1]);

    if (server.aof_state != AOF_OFF)
        FUNC1(server.delCommand,db->id,argv,2);
    FUNC3(server.slaves,db->id,argv,2);

    FUNC0(argv[0]);
    FUNC0(argv[1]);
}