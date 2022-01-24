#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_8__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;
typedef  struct TYPE_40__   TYPE_16__ ;
typedef  struct TYPE_39__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  setTypeIterator ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_41__ {int encoding; scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  intset ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_42__ {size_t resp; TYPE_8__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_43__ {int /*<<< orphan*/  id; } ;
struct TYPE_40__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_39__ {int /*<<< orphan*/  czero; int /*<<< orphan*/ * emptyset; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_SET ; 
 int OBJ_ENCODING_HT ; 
 int OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/  OBJ_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC8 (TYPE_8__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (TYPE_8__*,TYPE_1__*) ; 
 TYPE_1__* FUNC12 (TYPE_8__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__**,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qsortCompareSetsByCardinality ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_16__ server ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (TYPE_1__*) ; 
 TYPE_10__ shared ; 
 int /*<<< orphan*/  FUNC25 (TYPE_8__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__**) ; 
 TYPE_1__** FUNC27 (int) ; 

void FUNC28(client *c, robj **setkeys,
                          unsigned long setnum, robj *dstkey) {
    robj **sets = FUNC27(sizeof(robj*)*setnum);
    setTypeIterator *si;
    robj *dstset = NULL;
    sds elesds;
    int64_t intobj;
    void *replylen = NULL;
    unsigned long j, cardinality = 0;
    int encoding;

    for (j = 0; j < setnum; j++) {
        robj *setobj = dstkey ?
            FUNC12(c->db,setkeys[j]) :
            FUNC11(c->db,setkeys[j]);
        if (!setobj) {
            FUNC26(sets);
            if (dstkey) {
                if (FUNC8(c->db,dstkey)) {
                    FUNC25(c->db,dstkey);
                    server.dirty++;
                }
                FUNC0(c,shared.czero);
            } else {
                FUNC0(c,shared.emptyset[c->resp]);
            }
            return;
        }
        if (FUNC5(c,setobj,OBJ_SET)) {
            FUNC26(sets);
            return;
        }
        sets[j] = setobj;
    }
    /* Sort sets from the smallest to largest, this will improve our
     * algorithm's performance */
    FUNC14(sets,setnum,sizeof(robj*),qsortCompareSetsByCardinality);

    /* The first thing we should output is the total number of elements...
     * since this is a multi-bulk write, but at this stage we don't know
     * the intersection set size, so we use a trick, append an empty object
     * to the output list and save the pointer to later modify it with the
     * right length */
    if (!dstkey) {
        replylen = FUNC3(c);
    } else {
        /* If we have a target key where to store the resulting set
         * create this key with an empty set inside */
        dstset = FUNC6();
    }

    /* Iterate all the elements of the first (smallest) set, and test
     * the element against all the other sets, if at least one set does
     * not include the element it is discarded */
    si = FUNC20(sets[0]);
    while((encoding = FUNC22(si,&elesds,&intobj)) != -1) {
        for (j = 1; j < setnum; j++) {
            if (sets[j] == sets[0]) continue;
            if (encoding == OBJ_ENCODING_INTSET) {
                /* intset with intset is simple... and fast */
                if (sets[j]->encoding == OBJ_ENCODING_INTSET &&
                    !FUNC10((intset*)sets[j]->ptr,intobj))
                {
                    break;
                /* in order to compare an integer with an object we
                 * have to use the generic function, creating an object
                 * for this */
                } else if (sets[j]->encoding == OBJ_ENCODING_HT) {
                    elesds = FUNC16(intobj);
                    if (!FUNC21(sets[j],elesds)) {
                        FUNC15(elesds);
                        break;
                    }
                    FUNC15(elesds);
                }
            } else if (encoding == OBJ_ENCODING_HT) {
                if (!FUNC21(sets[j],elesds)) {
                    break;
                }
            }
        }

        /* Only take action when all sets contain the member */
        if (j == setnum) {
            if (!dstkey) {
                if (encoding == OBJ_ENCODING_HT)
                    FUNC1(c,elesds,FUNC17(elesds));
                else
                    FUNC2(c,intobj);
                cardinality++;
            } else {
                if (encoding == OBJ_ENCODING_INTSET) {
                    elesds = FUNC16(intobj);
                    FUNC19(dstset,elesds);
                    FUNC15(elesds);
                } else {
                    FUNC19(dstset,elesds);
                }
            }
        }
    }
    FUNC23(si);

    if (dstkey) {
        /* Store the resulting set into the target, if the intersection
         * is not an empty set. */
        int deleted = FUNC8(c->db,dstkey);
        if (FUNC24(dstset) > 0) {
            FUNC7(c->db,dstkey,dstset);
            FUNC4(c,FUNC24(dstset));
            FUNC13(NOTIFY_SET,"sinterstore",
                dstkey,c->db->id);
        } else {
            FUNC9(dstset);
            FUNC0(c,shared.czero);
            if (deleted)
                FUNC13(NOTIFY_GENERIC,"del",
                    dstkey,c->db->id);
        }
        FUNC25(c->db,dstkey);
        server.dirty++;
    } else {
        FUNC18(c,replylen,cardinality);
    }
    FUNC26(sets);
}