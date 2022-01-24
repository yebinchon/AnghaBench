#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  streamID ;
typedef  int /*<<< orphan*/  stream ;
struct TYPE_13__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_14__ {int argc; TYPE_5__* db; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_17__ {int dirty; } ;
struct TYPE_16__ {int /*<<< orphan*/  czero; } ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_STREAM ; 
 int /*<<< orphan*/  OBJ_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ server ; 
 TYPE_6__ shared ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(client *c) {
    robj *o;

    if ((o = FUNC2(c,c->argv[1],shared.czero)) == NULL
        || FUNC1(c,o,OBJ_STREAM)) return;
    stream *s = o->ptr;

    /* We need to sanity check the IDs passed to start. Even if not
     * a big issue, it is not great that the command is only partially
     * executed because at some point an invalid ID is parsed. */
    streamID id;
    for (int j = 2; j < c->argc; j++) {
        if (FUNC6(c,c->argv[j],&id,0) != C_OK) return;
    }

    /* Actually apply the command. */
    int deleted = 0;
    for (int j = 2; j < c->argc; j++) {
        FUNC6(c,c->argv[j],&id,0); /* Retval already checked. */
        deleted += FUNC5(s,&id);
    }

    /* Propagate the write if needed. */
    if (deleted) {
        FUNC4(c->db,c->argv[1]);
        FUNC3(NOTIFY_STREAM,"xdel",c->argv[1],c->db->id);
        server.dirty += deleted;
    }
    FUNC0(c,deleted);
}