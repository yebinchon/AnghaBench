#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_14__ {int argc; TYPE_2__* db; TYPE_3__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_18__ {int dirty; } ;
struct TYPE_17__ {int /*<<< orphan*/  czero; } ;
struct TYPE_16__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_HASH ; 
 int /*<<< orphan*/  OBJ_HASH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__ server ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*) ; 

void FUNC8(client *c) {
    robj *o;
    int j, deleted = 0, keyremoved = 0;

    if ((o = FUNC5(c,c->argv[1],shared.czero)) == NULL ||
        FUNC1(c,o,OBJ_HASH)) return;

    for (j = 2; j < c->argc; j++) {
        if (FUNC3(o,c->argv[j]->ptr)) {
            deleted++;
            if (FUNC4(o) == 0) {
                FUNC2(c->db,c->argv[1]);
                keyremoved = 1;
                break;
            }
        }
    }
    if (deleted) {
        FUNC7(c->db,c->argv[1]);
        FUNC6(NOTIFY_HASH,"hdel",c->argv[1],c->db->id);
        if (keyremoved)
            FUNC6(NOTIFY_GENERIC,"del",c->argv[1],
                                c->db->id);
        server.dirty += deleted;
    }
    FUNC0(c,deleted);
}