#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  last_id; } ;
typedef  TYPE_2__ streamCG ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_9__ {TYPE_1__* db; } ;
typedef  TYPE_3__ client ;
struct TYPE_10__ {int /*<<< orphan*/  xgroupCommand; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int PROPAGATE_AOF ; 
 int PROPAGATE_REPL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int) ; 
 TYPE_6__ server ; 

void FUNC4(client *c, robj *key, streamCG *group, robj *groupname) {
    robj *argv[5];
    argv[0] = FUNC1("XGROUP",6);
    argv[1] = FUNC1("SETID",5);
    argv[2] = key;
    argv[3] = groupname;
    argv[4] = FUNC0(&group->last_id);
    FUNC3(server.xgroupCommand,c->db->id,argv,5,PROPAGATE_AOF|PROPAGATE_REPL);
    FUNC2(argv[0]);
    FUNC2(argv[1]);
    FUNC2(argv[4]);
}