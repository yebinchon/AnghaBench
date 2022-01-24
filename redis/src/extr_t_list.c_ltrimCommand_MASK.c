#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ encoding; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_16__ {int /*<<< orphan*/ * argv; TYPE_3__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_19__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_18__ {int /*<<< orphan*/  ok; } ;
struct TYPE_17__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_LIST ; 
 scalar_t__ OBJ_ENCODING_QUICKLIST ; 
 int /*<<< orphan*/  OBJ_LIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 long FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,long,long) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC10(client *c) {
    robj *o;
    long start, end, llen, ltrim, rtrim;

    if ((FUNC3(c, c->argv[2], &start, NULL) != C_OK) ||
        (FUNC3(c, c->argv[3], &end, NULL) != C_OK)) return;

    if ((o = FUNC5(c,c->argv[1],shared.ok)) == NULL ||
        FUNC1(c,o,OBJ_LIST)) return;
    llen = FUNC4(o);

    /* convert negative indexes */
    if (start < 0) start = llen+start;
    if (end < 0) end = llen+end;
    if (start < 0) start = 0;

    /* Invariant: start >= 0, so this test will be true when end < 0.
     * The range is empty when start > end or start >= length. */
    if (start > end || start >= llen) {
        /* Out of range start or start > end result in empty list */
        ltrim = llen;
        rtrim = 0;
    } else {
        if (end >= llen) end = llen-1;
        ltrim = start;
        rtrim = llen-end-1;
    }

    /* Remove list elements to perform the trim */
    if (o->encoding == OBJ_ENCODING_QUICKLIST) {
        FUNC7(o->ptr,0,ltrim);
        FUNC7(o->ptr,-rtrim,rtrim);
    } else {
        FUNC8("Unknown list encoding");
    }

    FUNC6(NOTIFY_LIST,"ltrim",c->argv[1],c->db->id);
    if (FUNC4(o) == 0) {
        FUNC2(c->db,c->argv[1]);
        FUNC6(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);
    }
    FUNC9(c->db,c->argv[1]);
    server.dirty++;
    FUNC0(c,shared.ok);
}