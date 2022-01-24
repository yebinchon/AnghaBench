#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_11__ {size_t resp; int /*<<< orphan*/ * argv; TYPE_2__* db; } ;
typedef  TYPE_1__ client ;
struct TYPE_14__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_13__ {int /*<<< orphan*/ * null; } ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int LIST_HEAD ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_LIST ; 
 int /*<<< orphan*/  OBJ_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC10(client *c, int where) {
    robj *o = FUNC7(c,c->argv[1],shared.null[c->resp]);
    if (o == NULL || FUNC2(c,o,OBJ_LIST)) return;

    robj *value = FUNC6(o,where);
    if (value == NULL) {
        FUNC1(c);
    } else {
        char *event = (where == LIST_HEAD) ? "lpop" : "rpop";

        FUNC0(c,value);
        FUNC4(value);
        FUNC8(NOTIFY_LIST,event,c->argv[1],c->db->id);
        if (FUNC5(o) == 0) {
            FUNC8(NOTIFY_GENERIC,"del",
                                c->argv[1],c->db->id);
            FUNC3(c->db,c->argv[1]);
        }
        FUNC9(c->db,c->argv[1]);
        server.dirty++;
    }
}