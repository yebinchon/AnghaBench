#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_14__ {int argc; TYPE_3__* db; TYPE_4__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_18__ {int dirty; } ;
struct TYPE_17__ {int /*<<< orphan*/  czero; } ;
struct TYPE_16__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_SET ; 
 int /*<<< orphan*/  OBJ_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_6__ server ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_5__ shared ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*) ; 

void FUNC8(client *c) {
    robj *set;
    int j, deleted = 0, keyremoved = 0;

    if ((set = FUNC3(c,c->argv[1],shared.czero)) == NULL ||
        FUNC1(c,set,OBJ_SET)) return;

    for (j = 2; j < c->argc; j++) {
        if (FUNC5(set,c->argv[j]->ptr)) {
            deleted++;
            if (FUNC6(set) == 0) {
                FUNC2(c->db,c->argv[1]);
                keyremoved = 1;
                break;
            }
        }
    }
    if (deleted) {
        FUNC7(c->db,c->argv[1]);
        FUNC4(NOTIFY_SET,"srem",c->argv[1],c->db->id);
        if (keyremoved)
            FUNC4(NOTIFY_GENERIC,"del",c->argv[1],
                                c->db->id);
        server.dirty += deleted;
    }
    FUNC0(c,deleted);
}