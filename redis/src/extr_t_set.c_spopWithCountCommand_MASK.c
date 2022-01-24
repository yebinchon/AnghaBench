#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_8__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;
typedef  struct TYPE_40__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  setTypeIterator ;
typedef  char* sds ;
struct TYPE_41__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_42__ {size_t resp; TYPE_1__** argv; TYPE_6__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_44__ {int /*<<< orphan*/  del; int /*<<< orphan*/ * emptyset; int /*<<< orphan*/ * null; int /*<<< orphan*/  outofrangeerr; } ;
struct TYPE_43__ {int /*<<< orphan*/  id; } ;
struct TYPE_40__ {scalar_t__ dirty; int /*<<< orphan*/  sremCommand; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_SET ; 
 int OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/  OBJ_SET ; 
 int PROPAGATE_AOF ; 
 int PROPAGATE_REPL ; 
 int /*<<< orphan*/  SET_OP_UNION ; 
 unsigned long SPOP_MOVE_STRATEGY_MUL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (char*,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_1__*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (char*) ; 
 TYPE_15__ server ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC22 (char*) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_1__*) ; 
 int FUNC24 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int FUNC25 (TYPE_1__*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,char*) ; 
 unsigned long FUNC28 (TYPE_1__*) ; 
 TYPE_8__ shared ; 
 int /*<<< orphan*/  FUNC29 (TYPE_6__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,TYPE_1__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC31(client *c) {
    long l;
    unsigned long count, size;
    robj *set;

    /* Get the count argument */
    if (FUNC11(c,c->argv[2],&l,NULL) != C_OK) return;
    if (l >= 0) {
        count = (unsigned long) l;
    } else {
        FUNC0(c,shared.outofrangeerr);
        return;
    }

    /* Make sure a key with the name inputted exists, and that it's type is
     * indeed a set. Otherwise, return nil */
    if ((set = FUNC13(c,c->argv[1],shared.null[c->resp]))
        == NULL || FUNC5(c,set,OBJ_SET)) return;

    /* If count is zero, serve an empty set ASAP to avoid special
     * cases later. */
    if (count == 0) {
        FUNC0(c,shared.emptyset[c->resp]);
        return;
    }

    size = FUNC28(set);

    /* Generate an SPOP keyspace notification */
    FUNC14(NOTIFY_SET,"spop",c->argv[1],c->db->id);
    server.dirty += count;

    /* CASE 1:
     * The number of requested elements is greater than or equal to
     * the number of elements inside the set: simply return the whole set. */
    if (count >= size) {
        /* We just return the entire set */
        FUNC30(c,c->argv+1,1,NULL,SET_OP_UNION);

        /* Delete the set as it is now empty */
        FUNC8(c->db,c->argv[1]);
        FUNC14(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);

        /* Propagate this command as an DEL operation */
        FUNC16(c,2,shared.del,c->argv[1]);
        FUNC29(c->db,c->argv[1]);
        server.dirty++;
        return;
    }

    /* Case 2 and 3 require to replicate SPOP as a set of SREM commands.
     * Prepare our replication argument vector. Also send the array length
     * which is common to both the code paths. */
    robj *propargv[3];
    propargv[0] = FUNC6("SREM",4);
    propargv[1] = c->argv[1];
    FUNC3(c,count);

    /* Common iteration vars. */
    sds sdsele;
    robj *objele;
    int encoding;
    int64_t llele;
    unsigned long remaining = size-count; /* Elements left after SPOP. */

    /* If we are here, the number of requested elements is less than the
     * number of elements inside the set. Also we are sure that count < size.
     * Use two different strategies.
     *
     * CASE 2: The number of elements to return is small compared to the
     * set size. We can just extract random elements and return them to
     * the set. */
    if (remaining*SPOP_MOVE_STRATEGY_MUL > count) {
        while(count--) {
            /* Emit and remove. */
            encoding = FUNC25(set,&sdsele,&llele);
            if (encoding == OBJ_ENCODING_INTSET) {
                FUNC2(c,llele);
                objele = FUNC7(llele);
                set->ptr = FUNC12(set->ptr,llele,NULL);
            } else {
                FUNC1(c,sdsele,FUNC20(sdsele));
                objele = FUNC6(sdsele,FUNC20(sdsele));
                FUNC27(set,sdsele);
            }

            /* Replicate/AOF this command as an SREM operation */
            propargv[2] = objele;
            FUNC4(server.sremCommand,c->db->id,propargv,3,
                PROPAGATE_AOF|PROPAGATE_REPL);
            FUNC10(objele);
        }
    } else {
    /* CASE 3: The number of elements to return is very big, approaching
     * the size of the set itself. After some time extracting random elements
     * from such a set becomes computationally expensive, so we use
     * a different strategy, we extract random elements that we don't
     * want to return (the elements that will remain part of the set),
     * creating a new set as we do this (that will be stored as the original
     * set). Then we return the elements left in the original set and
     * release it. */
        robj *newset = NULL;

        /* Create a new set with just the remaining elements. */
        while(remaining--) {
            encoding = FUNC25(set,&sdsele,&llele);
            if (encoding == OBJ_ENCODING_INTSET) {
                sdsele = FUNC19(llele);
            } else {
                sdsele = FUNC17(sdsele);
            }
            if (!newset) newset = FUNC22(sdsele);
            FUNC21(newset,sdsele);
            FUNC27(set,sdsele);
            FUNC18(sdsele);
        }

        /* Transfer the old set to the client. */
        setTypeIterator *si;
        si = FUNC23(set);
        while((encoding = FUNC24(si,&sdsele,&llele)) != -1) {
            if (encoding == OBJ_ENCODING_INTSET) {
                FUNC2(c,llele);
                objele = FUNC7(llele);
            } else {
                FUNC1(c,sdsele,FUNC20(sdsele));
                objele = FUNC6(sdsele,FUNC20(sdsele));
            }

            /* Replicate/AOF this command as an SREM operation */
            propargv[2] = objele;
            FUNC4(server.sremCommand,c->db->id,propargv,3,
                PROPAGATE_AOF|PROPAGATE_REPL);
            FUNC10(objele);
        }
        FUNC26(si);

        /* Assign the new set as the key value. */
        FUNC9(c->db,c->argv[1],newset);
    }

    /* Don't propagate the command itself even if we incremented the
     * dirty counter. We don't want to propagate an SPOP command since
     * we propagated the command as a set of SREMs operations using
     * the alsoPropagate() API. */
    FUNC10(propargv[0]);
    FUNC15(c);
    FUNC29(c->db,c->argv[1]);
    server.dirty++;
}