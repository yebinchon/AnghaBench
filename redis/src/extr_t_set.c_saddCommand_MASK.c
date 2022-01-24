#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
struct TYPE_20__ {int argc; TYPE_3__* db; TYPE_4__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_24__ {int dirty; } ;
struct TYPE_23__ {int /*<<< orphan*/  wrongtypeerr; } ;
struct TYPE_22__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_21__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_SET ; 
 scalar_t__ OBJ_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_8__ server ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__ shared ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*) ; 

void FUNC8(client *c) {
    robj *set;
    int j, added = 0;

    set = FUNC3(c->db,c->argv[1]);
    if (set == NULL) {
        set = FUNC6(c->argv[2]->ptr);
        FUNC2(c->db,c->argv[1],set);
    } else {
        if (set->type != OBJ_SET) {
            FUNC0(c,shared.wrongtypeerr);
            return;
        }
    }

    for (j = 2; j < c->argc; j++) {
        if (FUNC5(set,c->argv[j]->ptr)) added++;
    }
    if (added) {
        FUNC7(c->db,c->argv[1]);
        FUNC4(NOTIFY_SET,"sadd",c->argv[1],c->db->id);
    }
    server.dirty += added;
    FUNC1(c,added);
}