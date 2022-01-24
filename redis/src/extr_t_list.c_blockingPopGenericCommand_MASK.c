#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  mstime_t ;
struct TYPE_30__ {int argc; int flags; TYPE_1__** argv; TYPE_3__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_33__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_32__ {int /*<<< orphan*/  rpop; int /*<<< orphan*/  lpop; int /*<<< orphan*/  wrongtypeerr; } ;
struct TYPE_31__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKED_LIST ; 
 int CLIENT_MULTI ; 
 scalar_t__ C_OK ; 
 int LIST_HEAD ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_LIST ; 
 scalar_t__ OBJ_LIST ; 
 int /*<<< orphan*/  UNIT_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC10 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_6__ server ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_5__ shared ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_1__*) ; 

void FUNC15(client *c, int where) {
    robj *o;
    mstime_t timeout;
    int j;

    if (FUNC7(c,c->argv[c->argc-1],&timeout,UNIT_SECONDS)
        != C_OK) return;

    for (j = 1; j < c->argc-1; j++) {
        o = FUNC10(c->db,c->argv[j]);
        if (o != NULL) {
            if (o->type != OBJ_LIST) {
                FUNC0(c,shared.wrongtypeerr);
                return;
            } else {
                if (FUNC8(o) != 0) {
                    /* Non empty list, this is like a non normal [LR]POP. */
                    char *event = (where == LIST_HEAD) ? "lpop" : "rpop";
                    robj *value = FUNC9(o,where);
                    FUNC13(value != NULL);

                    FUNC1(c,2);
                    FUNC2(c,c->argv[j]);
                    FUNC2(c,value);
                    FUNC6(value);
                    FUNC11(NOTIFY_LIST,event,
                                        c->argv[j],c->db->id);
                    if (FUNC8(o) == 0) {
                        FUNC5(c->db,c->argv[j]);
                        FUNC11(NOTIFY_GENERIC,"del",
                                            c->argv[j],c->db->id);
                    }
                    FUNC14(c->db,c->argv[j]);
                    server.dirty++;

                    /* Replicate it as an [LR]POP instead of B[LR]POP. */
                    FUNC12(c,2,
                        (where == LIST_HEAD) ? shared.lpop : shared.rpop,
                        c->argv[j]);
                    return;
                }
            }
        }
    }

    /* If we are inside a MULTI/EXEC and the list is empty the only thing
     * we can do is treating it as a timeout (even with timeout 0). */
    if (c->flags & CLIENT_MULTI) {
        FUNC3(c);
        return;
    }

    /* If the list is empty or the key does not exists we must block */
    FUNC4(c,BLOCKED_LIST,c->argv + 1,c->argc - 2,timeout,NULL,NULL);
}