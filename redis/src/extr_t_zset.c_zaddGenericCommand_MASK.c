#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_25__ {char* ptr; scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
struct TYPE_26__ {int argc; TYPE_5__* db; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_29__ {scalar_t__ zset_max_ziplist_entries; scalar_t__ zset_max_ziplist_value; int dirty; } ;
struct TYPE_28__ {int /*<<< orphan*/  wrongtypeerr; int /*<<< orphan*/  syntaxerr; } ;
struct TYPE_27__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_ZSET ; 
 scalar_t__ OBJ_ZSET ; 
 int ZADD_ADDED ; 
 int ZADD_CH ; 
 int ZADD_INCR ; 
 int ZADD_NOP ; 
 int ZADD_NX ; 
 int ZADD_UPDATED ; 
 int ZADD_XX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 () ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_1__*,double*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (TYPE_5__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 
 TYPE_8__ server ; 
 TYPE_7__ shared ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (double*) ; 
 double* FUNC15 (int) ; 
 int FUNC16 (TYPE_1__*,double,char*,int*,double*) ; 

void FUNC17(client *c, int flags) {
    static char *nanerr = "resulting score is not a number (NaN)";
    robj *key = c->argv[1];
    robj *zobj;
    sds ele;
    double score = 0, *scores = NULL;
    int j, elements;
    int scoreidx = 0;
    /* The following vars are used in order to track what the command actually
     * did during the execution, to reply to the client and to trigger the
     * notification of keyspace change. */
    int added = 0;      /* Number of new elements added. */
    int updated = 0;    /* Number of elements with updated score. */
    int processed = 0;  /* Number of elements processed, may remain zero with
                           options like XX. */

    /* Parse options. At the end 'scoreidx' is set to the argument position
     * of the score of the first score-element pair. */
    scoreidx = 2;
    while(scoreidx < c->argc) {
        char *opt = c->argv[scoreidx]->ptr;
        if (!FUNC13(opt,"nx")) flags |= ZADD_NX;
        else if (!FUNC13(opt,"xx")) flags |= ZADD_XX;
        else if (!FUNC13(opt,"ch")) flags |= ZADD_CH;
        else if (!FUNC13(opt,"incr")) flags |= ZADD_INCR;
        else break;
        scoreidx++;
    }

    /* Turn options into simple to check vars. */
    int incr = (flags & ZADD_INCR) != 0;
    int nx = (flags & ZADD_NX) != 0;
    int xx = (flags & ZADD_XX) != 0;
    int ch = (flags & ZADD_CH) != 0;

    /* After the options, we expect to have an even number of args, since
     * we expect any number of score-element pairs. */
    elements = c->argc-scoreidx;
    if (elements % 2 || !elements) {
        FUNC0(c,shared.syntaxerr);
        return;
    }
    elements /= 2; /* Now this holds the number of score-element pairs. */

    /* Check for incompatible options. */
    if (nx && xx) {
        FUNC2(c,
            "XX and NX options at the same time are not compatible");
        return;
    }

    if (incr && elements > 1) {
        FUNC2(c,
            "INCR option supports a single increment-element pair");
        return;
    }

    /* Start parsing all the scores, we need to emit any syntax error
     * before executing additions to the sorted set, as the command should
     * either execute fully or nothing at all. */
    scores = FUNC15(sizeof(double)*elements);
    for (j = 0; j < elements; j++) {
        if (FUNC8(c,c->argv[scoreidx+j*2],&scores[j],NULL)
            != C_OK) goto cleanup;
    }

    /* Lookup the key and create the sorted set if does not exist. */
    zobj = FUNC9(c->db,key);
    if (zobj == NULL) {
        if (xx) goto reply_to_client; /* No key + XX option: nothing to do. */
        if (server.zset_max_ziplist_entries == 0 ||
            server.zset_max_ziplist_value < FUNC11(c->argv[scoreidx+1]->ptr))
        {
            zobj = FUNC5();
        } else {
            zobj = FUNC6();
        }
        FUNC7(c->db,key,zobj);
    } else {
        if (zobj->type != OBJ_ZSET) {
            FUNC0(c,shared.wrongtypeerr);
            goto cleanup;
        }
    }

    for (j = 0; j < elements; j++) {
        double newscore;
        score = scores[j];
        int retflags = flags;

        ele = c->argv[scoreidx+1+j*2]->ptr;
        int retval = FUNC16(zobj, score, ele, &retflags, &newscore);
        if (retval == 0) {
            FUNC2(c,nanerr);
            goto cleanup;
        }
        if (retflags & ZADD_ADDED) added++;
        if (retflags & ZADD_UPDATED) updated++;
        if (!(retflags & ZADD_NOP)) processed++;
        score = newscore;
    }
    server.dirty += (added+updated);

reply_to_client:
    if (incr) { /* ZINCRBY or INCR option. */
        if (processed)
            FUNC1(c,score);
        else
            FUNC4(c);
    } else { /* ZADD. */
        FUNC3(c,ch ? added+updated : added);
    }

cleanup:
    FUNC14(scores);
    if (added || updated) {
        FUNC12(c->db,key);
        FUNC10(NOTIFY_ZSET,
            incr ? "zincr" : "zadd", key, c->db->id);
    }
}