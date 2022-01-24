#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  streamIterator ;
typedef  int /*<<< orphan*/  streamID ;
struct TYPE_17__ {scalar_t__ length; int /*<<< orphan*/  last_id; } ;
typedef  TYPE_2__ stream ;
struct TYPE_18__ {TYPE_2__* ptr; } ;
typedef  TYPE_3__ robj ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_19__ {TYPE_1__* db; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_4__ client ;
struct TYPE_21__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_20__ {int /*<<< orphan*/  ok; int /*<<< orphan*/  nokeyerr; } ;
struct TYPE_16__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_STREAM ; 
 int /*<<< orphan*/  OBJ_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__ server ; 
 TYPE_8__ shared ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(client *c) {
    robj *o = FUNC3(c,c->argv[1],shared.nokeyerr);
    if (o == NULL || FUNC2(c,o,OBJ_STREAM)) return;

    stream *s = o->ptr;
    streamID id;
    if (FUNC9(c,c->argv[2],&id,0) != C_OK) return;

    /* If the stream has at least one item, we want to check that the user
     * is setting a last ID that is equal or greater than the current top
     * item, otherwise the fundamental ID monotonicity assumption is violated. */
    if (s->length > 0) {
        streamID maxid;
        streamIterator si;
        FUNC7(&si,s,NULL,NULL,1);
        int64_t numfields;
        FUNC6(&si,&maxid,&numfields);
        FUNC8(&si);

        if (FUNC5(&id,&maxid) < 0) {
            FUNC1(c,"The ID specified in XSETID is smaller than the "
                            "target stream top item");
            return;
        }
    }
    s->last_id = id;
    FUNC0(c,shared.ok);
    server.dirty++;
    FUNC4(NOTIFY_STREAM,"xsetid",c->argv[1],c->db->id);
}