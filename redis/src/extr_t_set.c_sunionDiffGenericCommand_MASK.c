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
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  setTypeIterator ;
typedef  int /*<<< orphan*/ * sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_15__ {TYPE_3__* db; } ;
typedef  TYPE_1__ client ;
struct TYPE_18__ {int /*<<< orphan*/  dirty; scalar_t__ lazyfree_lazy_server_del; } ;
struct TYPE_17__ {int /*<<< orphan*/  czero; } ;
struct TYPE_16__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_SET ; 
 int /*<<< orphan*/  OBJ_SET ; 
 int SET_OP_DIFF ; 
 int SET_OP_UNION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qsortCompareSetsByRevCardinality ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_5__ server ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC25 (int) ; 

void FUNC26(client *c, robj **setkeys, int setnum,
                              robj *dstkey, int op) {
    robj **sets = FUNC25(sizeof(robj*)*setnum);
    setTypeIterator *si;
    robj *dstset = NULL;
    sds ele;
    int j, cardinality = 0;
    int diff_algo = 1;

    for (j = 0; j < setnum; j++) {
        robj *setobj = dstkey ?
            FUNC11(c->db,setkeys[j]) :
            FUNC10(c->db,setkeys[j]);
        if (!setobj) {
            sets[j] = NULL;
            continue;
        }
        if (FUNC4(c,setobj,OBJ_SET)) {
            FUNC24(sets);
            return;
        }
        sets[j] = setobj;
    }

    /* Select what DIFF algorithm to use.
     *
     * Algorithm 1 is O(N*M) where N is the size of the element first set
     * and M the total number of sets.
     *
     * Algorithm 2 is O(N) where N is the total number of elements in all
     * the sets.
     *
     * We compute what is the best bet with the current input here. */
    if (op == SET_OP_DIFF && sets[0]) {
        long long algo_one_work = 0, algo_two_work = 0;

        for (j = 0; j < setnum; j++) {
            if (sets[j] == NULL) continue;

            algo_one_work += FUNC22(sets[0]);
            algo_two_work += FUNC22(sets[j]);
        }

        /* Algorithm 1 has better constant times and performs less operations
         * if there are elements in common. Give it some advantage. */
        algo_one_work /= 2;
        diff_algo = (algo_one_work <= algo_two_work) ? 1 : 2;

        if (diff_algo == 1 && setnum > 1) {
            /* With algorithm 1 it is better to order the sets to subtract
             * by decreasing size, so that we are more likely to find
             * duplicated elements ASAP. */
            FUNC13(sets+1,setnum-1,sizeof(robj*),
                qsortCompareSetsByRevCardinality);
        }
    }

    /* We need a temp set object to store our union. If the dstkey
     * is not NULL (that is, we are inside an SUNIONSTORE operation) then
     * this set object will be the resulting object to set into the target key*/
    dstset = FUNC5();

    if (op == SET_OP_UNION) {
        /* Union is trivial, just add every element of every set to the
         * temporary set. */
        for (j = 0; j < setnum; j++) {
            if (!sets[j]) continue; /* non existing keys are like empty sets */

            si = FUNC17(sets[j]);
            while((ele = FUNC19(si)) != NULL) {
                if (FUNC16(dstset,ele)) cardinality++;
                FUNC14(ele);
            }
            FUNC20(si);
        }
    } else if (op == SET_OP_DIFF && sets[0] && diff_algo == 1) {
        /* DIFF Algorithm 1:
         *
         * We perform the diff by iterating all the elements of the first set,
         * and only adding it to the target set if the element does not exist
         * into all the other sets.
         *
         * This way we perform at max N*M operations, where N is the size of
         * the first set, and M the number of sets. */
        si = FUNC17(sets[0]);
        while((ele = FUNC19(si)) != NULL) {
            for (j = 1; j < setnum; j++) {
                if (!sets[j]) continue; /* no key is an empty set. */
                if (sets[j] == sets[0]) break; /* same set! */
                if (FUNC18(sets[j],ele)) break;
            }
            if (j == setnum) {
                /* There is no other set with this element. Add it. */
                FUNC16(dstset,ele);
                cardinality++;
            }
            FUNC14(ele);
        }
        FUNC20(si);
    } else if (op == SET_OP_DIFF && sets[0] && diff_algo == 2) {
        /* DIFF Algorithm 2:
         *
         * Add all the elements of the first set to the auxiliary set.
         * Then remove all the elements of all the next sets from it.
         *
         * This is O(N) where N is the sum of all the elements in every
         * set. */
        for (j = 0; j < setnum; j++) {
            if (!sets[j]) continue; /* non existing keys are like empty sets */

            si = FUNC17(sets[j]);
            while((ele = FUNC19(si)) != NULL) {
                if (j == 0) {
                    if (FUNC16(dstset,ele)) cardinality++;
                } else {
                    if (FUNC21(dstset,ele)) cardinality--;
                }
                FUNC14(ele);
            }
            FUNC20(si);

            /* Exit if result set is empty as any additional removal
             * of elements will have no effect. */
            if (cardinality == 0) break;
        }
    }

    /* Output the content of the resulting set, if not in STORE mode */
    if (!dstkey) {
        FUNC3(c,cardinality);
        si = FUNC17(dstset);
        while((ele = FUNC19(si)) != NULL) {
            FUNC1(c,ele,FUNC15(ele));
            FUNC14(ele);
        }
        FUNC20(si);
        server.lazyfree_lazy_server_del ? FUNC9(dstset) :
                                          FUNC8(dstset);
    } else {
        /* If we have a target key where to store the resulting set
         * create this key with the result set inside */
        int deleted = FUNC7(c->db,dstkey);
        if (FUNC22(dstset) > 0) {
            FUNC6(c->db,dstkey,dstset);
            FUNC2(c,FUNC22(dstset));
            FUNC12(NOTIFY_SET,
                op == SET_OP_UNION ? "sunionstore" : "sdiffstore",
                dstkey,c->db->id);
        } else {
            FUNC8(dstset);
            FUNC0(c,shared.czero);
            if (deleted)
                FUNC12(NOTIFY_GENERIC,"del",
                    dstkey,c->db->id);
        }
        FUNC23(c->db,dstkey);
        server.dirty++;
    }
    FUNC24(sets);
}