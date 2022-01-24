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
struct TYPE_15__ {size_t resp; int /*<<< orphan*/ ** argv; TYPE_1__* cmd; TYPE_3__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_18__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_17__ {int /*<<< orphan*/  rpoplpush; int /*<<< orphan*/ * null; } ;
struct TYPE_16__ {int /*<<< orphan*/  id; } ;
struct TYPE_14__ {scalar_t__ proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIST_TAIL ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_LIST ; 
 int /*<<< orphan*/  OBJ_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ brpoplpushCommand ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__ server ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC13(client *c) {
    robj *sobj, *value;
    if ((sobj = FUNC8(c,c->argv[1],shared.null[c->resp]))
        == NULL || FUNC1(c,sobj,OBJ_LIST)) return;

    if (FUNC5(sobj) == 0) {
        /* This may only happen after loading very old RDB files. Recent
         * versions of Redis delete keys of empty lists. */
        FUNC0(c);
    } else {
        robj *dobj = FUNC7(c->db,c->argv[2]);
        robj *touchedkey = c->argv[1];

        if (dobj && FUNC1(c,dobj,OBJ_LIST)) return;
        value = FUNC6(sobj,LIST_TAIL);
        /* We saved touched key, and protect it, since rpoplpushHandlePush
         * may change the client command argument vector (it does not
         * currently). */
        FUNC4(touchedkey);
        FUNC11(c,c->argv[2],dobj,value);

        /* listTypePop returns an object with its refcount incremented */
        FUNC3(value);

        /* Delete the source list when it is empty */
        FUNC9(NOTIFY_LIST,"rpop",touchedkey,c->db->id);
        if (FUNC5(sobj) == 0) {
            FUNC2(c->db,touchedkey);
            FUNC9(NOTIFY_GENERIC,"del",
                                touchedkey,c->db->id);
        }
        FUNC12(c->db,touchedkey);
        FUNC3(touchedkey);
        server.dirty++;
        if (c->cmd->proc == brpoplpushCommand) {
            FUNC10(c,3,shared.rpoplpush,c->argv[1],c->argv[2]);
        }
    }
}