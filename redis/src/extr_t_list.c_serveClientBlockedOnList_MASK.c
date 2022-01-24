#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ redisDb ;
struct TYPE_13__ {TYPE_8__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_16__ {int /*<<< orphan*/  id; } ;
struct TYPE_15__ {int /*<<< orphan*/  lpushCommand; int /*<<< orphan*/  rpopCommand; int /*<<< orphan*/  lpopCommand; } ;
struct TYPE_14__ {int /*<<< orphan*/ * lpush; int /*<<< orphan*/ * rpop; int /*<<< orphan*/ * lpop; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int LIST_HEAD ; 
 int /*<<< orphan*/  NOTIFY_LIST ; 
 int /*<<< orphan*/  OBJ_LIST ; 
 int PROPAGATE_AOF ; 
 int PROPAGATE_REPL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 

int FUNC7(client *receiver, robj *key, robj *dstkey, redisDb *db, robj *value, int where)
{
    robj *argv[3];

    if (dstkey == NULL) {
        /* Propagate the [LR]POP operation. */
        argv[0] = (where == LIST_HEAD) ? shared.lpop :
                                          shared.rpop;
        argv[1] = key;
        FUNC5((where == LIST_HEAD) ?
            server.lpopCommand : server.rpopCommand,
            db->id,argv,2,PROPAGATE_AOF|PROPAGATE_REPL);

        /* BRPOP/BLPOP */
        FUNC0(receiver,2);
        FUNC1(receiver,key);
        FUNC1(receiver,value);

        /* Notify event. */
        char *event = (where == LIST_HEAD) ? "lpop" : "rpop";
        FUNC4(NOTIFY_LIST,event,key,receiver->db->id);
    } else {
        /* BRPOPLPUSH */
        robj *dstobj =
            FUNC3(receiver->db,dstkey);
        if (!(dstobj &&
             FUNC2(receiver,dstobj,OBJ_LIST)))
        {
            /* Propagate the RPOP operation. */
            argv[0] = shared.rpop;
            argv[1] = key;
            FUNC5(server.rpopCommand,
                db->id,argv,2,
                PROPAGATE_AOF|
                PROPAGATE_REPL);
            FUNC6(receiver,dstkey,dstobj,
                value);
            /* Propagate the LPUSH operation. */
            argv[0] = shared.lpush;
            argv[1] = dstkey;
            argv[2] = value;
            FUNC5(server.lpushCommand,
                db->id,argv,3,
                PROPAGATE_AOF|
                PROPAGATE_REPL);

            /* Notify event ("lpush" was notified by rpoplpushHandlePush). */
            FUNC4(NOTIFY_LIST,"rpop",key,receiver->db->id);
        } else {
            /* BRPOPLPUSH failed because of wrong
             * destination type. */
            return C_ERR;
        }
    }
    return C_OK;
}