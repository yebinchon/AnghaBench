#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  delivery_count; int /*<<< orphan*/  delivery_time; TYPE_1__* consumer; } ;
typedef  TYPE_3__ streamNACK ;
struct TYPE_13__ {int /*<<< orphan*/  last_id; } ;
typedef  TYPE_4__ streamCG ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_14__ {TYPE_2__* db; } ;
typedef  TYPE_5__ client ;
struct TYPE_15__ {int /*<<< orphan*/  xclaimCommand; } ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {char* name; } ;

/* Variables and functions */
 int PROPAGATE_AOF ; 
 int PROPAGATE_REPL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int) ; 
 int FUNC5 (char*) ; 
 TYPE_9__ server ; 

void FUNC6(client *c, robj *key, streamCG *group, robj *groupname, robj *id, streamNACK *nack) {
    /* We need to generate an XCLAIM that will work in a idempotent fashion:
     *
     * XCLAIM <key> <group> <consumer> 0 <id> TIME <milliseconds-unix-time>
     *        RETRYCOUNT <count> FORCE JUSTID LASTID <id>.
     *
     * Note that JUSTID is useful in order to avoid that XCLAIM will do
     * useless work in the slave side, trying to fetch the stream item. */
    robj *argv[14];
    argv[0] = FUNC1("XCLAIM",6);
    argv[1] = key;
    argv[2] = groupname;
    argv[3] = FUNC1(nack->consumer->name,FUNC5(nack->consumer->name));
    argv[4] = FUNC2(0);
    argv[5] = id;
    argv[6] = FUNC1("TIME",4);
    argv[7] = FUNC2(nack->delivery_time);
    argv[8] = FUNC1("RETRYCOUNT",10);
    argv[9] = FUNC2(nack->delivery_count);
    argv[10] = FUNC1("FORCE",5);
    argv[11] = FUNC1("JUSTID",6);
    argv[12] = FUNC1("LASTID",6);
    argv[13] = FUNC0(&group->last_id);
    FUNC4(server.xclaimCommand,c->db->id,argv,14,PROPAGATE_AOF|PROPAGATE_REPL);
    FUNC3(argv[0]);
    FUNC3(argv[3]);
    FUNC3(argv[4]);
    FUNC3(argv[6]);
    FUNC3(argv[7]);
    FUNC3(argv[8]);
    FUNC3(argv[9]);
    FUNC3(argv[10]);
    FUNC3(argv[11]);
    FUNC3(argv[12]);
    FUNC3(argv[13]);
}