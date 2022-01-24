#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_20__ {int argc; TYPE_6__* db; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_23__ {int dirty; } ;
struct TYPE_22__ {int /*<<< orphan*/  czero; } ;
struct TYPE_21__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_ZSET ; 
 int /*<<< orphan*/  OBJ_ZSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_9__ server ; 
 TYPE_8__ shared ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

void FUNC8(client *c) {
    robj *key = c->argv[1];
    robj *zobj;
    int deleted = 0, keyremoved = 0, j;

    if ((zobj = FUNC3(c,key,shared.czero)) == NULL ||
        FUNC1(c,zobj,OBJ_ZSET)) return;

    for (j = 2; j < c->argc; j++) {
        if (FUNC6(zobj,c->argv[j]->ptr)) deleted++;
        if (FUNC7(zobj) == 0) {
            FUNC2(c->db,key);
            keyremoved = 1;
            break;
        }
    }

    if (deleted) {
        FUNC4(NOTIFY_ZSET,"zrem",key,c->db->id);
        if (keyremoved)
            FUNC4(NOTIFY_GENERIC,"del",key,c->db->id);
        FUNC5(c->db,key);
        server.dirty += deleted;
    }
    FUNC0(c,deleted);
}