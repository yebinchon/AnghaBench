#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_20__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_19__ ;
typedef  struct TYPE_34__   TYPE_17__ ;

/* Type definitions */
struct TYPE_36__ {int /*<<< orphan*/  dict; int /*<<< orphan*/  zsl; } ;
typedef  TYPE_1__ zset ;
typedef  int /*<<< orphan*/  zrangespec ;
typedef  int /*<<< orphan*/  zlexrangespec ;
struct TYPE_38__ {scalar_t__ encoding; TYPE_1__* ptr; } ;
typedef  TYPE_2__ robj ;
struct TYPE_39__ {TYPE_17__* db; TYPE_2__** argv; } ;
typedef  TYPE_3__ client ;
struct TYPE_37__ {unsigned long dirty; } ;
struct TYPE_35__ {int /*<<< orphan*/  czero; } ;
struct TYPE_34__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_ZSET ; 
 scalar_t__ OBJ_ENCODING_SKIPLIST ; 
 scalar_t__ OBJ_ENCODING_ZIPLIST ; 
 int /*<<< orphan*/  OBJ_ZSET ; 
#define  ZRANGE_LEX 130 
#define  ZRANGE_RANK 129 
#define  ZRANGE_SCORE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,unsigned long) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_17__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_2__*,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_20__ server ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 TYPE_19__ shared ; 
 int /*<<< orphan*/  FUNC12 (TYPE_17__*,TYPE_2__*) ; 
 long FUNC13 (TYPE_2__*) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ,long,long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC20 (TYPE_1__*,int /*<<< orphan*/ *,unsigned long*) ; 
 TYPE_1__* FUNC21 (TYPE_1__*,long,long,unsigned long*) ; 
 TYPE_1__* FUNC22 (TYPE_1__*,int /*<<< orphan*/ *,unsigned long*) ; 
 scalar_t__ FUNC23 (TYPE_1__*) ; 

void FUNC24(client *c, int rangetype) {
    robj *key = c->argv[1];
    robj *zobj;
    int keyremoved = 0;
    unsigned long deleted = 0;
    zrangespec range;
    zlexrangespec lexrange;
    long start, end, llen;

    /* Step 1: Parse the range. */
    if (rangetype == ZRANGE_RANK) {
        if ((FUNC7(c,c->argv[2],&start,NULL) != C_OK) ||
            (FUNC7(c,c->argv[3],&end,NULL) != C_OK))
            return;
    } else if (rangetype == ZRANGE_SCORE) {
        if (FUNC19(c->argv[2],c->argv[3],&range) != C_OK) {
            FUNC1(c,"min or max is not a float");
            return;
        }
    } else if (rangetype == ZRANGE_LEX) {
        if (FUNC18(c->argv[2],c->argv[3],&lexrange) != C_OK) {
            FUNC1(c,"min or max not valid string range item");
            return;
        }
    }

    /* Step 2: Lookup & range sanity checks if needed. */
    if ((zobj = FUNC9(c,key,shared.czero)) == NULL ||
        FUNC3(c,zobj,OBJ_ZSET)) goto cleanup;

    if (rangetype == ZRANGE_RANK) {
        /* Sanitize indexes. */
        llen = FUNC13(zobj);
        if (start < 0) start = llen+start;
        if (end < 0) end = llen+end;
        if (start < 0) start = 0;

        /* Invariant: start >= 0, so this test will be true when end < 0.
         * The range is empty when start > end or start >= length. */
        if (start > end || start >= llen) {
            FUNC0(c,shared.czero);
            goto cleanup;
        }
        if (end >= llen) end = llen-1;
    }

    /* Step 3: Perform the range deletion operation. */
    if (zobj->encoding == OBJ_ENCODING_ZIPLIST) {
        switch(rangetype) {
        case ZRANGE_RANK:
            zobj->ptr = FUNC21(zobj->ptr,start+1,end+1,&deleted);
            break;
        case ZRANGE_SCORE:
            zobj->ptr = FUNC22(zobj->ptr,&range,&deleted);
            break;
        case ZRANGE_LEX:
            zobj->ptr = FUNC20(zobj->ptr,&lexrange,&deleted);
            break;
        }
        if (FUNC23(zobj->ptr) == 0) {
            FUNC4(c->db,key);
            keyremoved = 1;
        }
    } else if (zobj->encoding == OBJ_ENCODING_SKIPLIST) {
        zset *zs = zobj->ptr;
        switch(rangetype) {
        case ZRANGE_RANK:
            deleted = FUNC15(zs->zsl,start+1,end+1,zs->dict);
            break;
        case ZRANGE_SCORE:
            deleted = FUNC16(zs->zsl,&range,zs->dict);
            break;
        case ZRANGE_LEX:
            deleted = FUNC14(zs->zsl,&lexrange,zs->dict);
            break;
        }
        if (FUNC8(zs->dict)) FUNC5(zs->dict);
        if (FUNC6(zs->dict) == 0) {
            FUNC4(c->db,key);
            keyremoved = 1;
        }
    } else {
        FUNC11("Unknown sorted set encoding");
    }

    /* Step 4: Notifications and reply. */
    if (deleted) {
        char *event[3] = {"zremrangebyrank","zremrangebyscore","zremrangebylex"};
        FUNC12(c->db,key);
        FUNC10(NOTIFY_ZSET,event[rangetype],key,c->db->id);
        if (keyremoved)
            FUNC10(NOTIFY_GENERIC,"del",key,c->db->id);
    }
    server.dirty += deleted;
    FUNC2(c,deleted);

cleanup:
    if (rangetype == ZRANGE_LEX) FUNC17(&lexrange);
}