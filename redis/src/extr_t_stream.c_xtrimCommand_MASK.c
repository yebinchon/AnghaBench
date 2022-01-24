#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream ;
struct TYPE_20__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ robj ;
typedef  scalar_t__ int64_t ;
struct TYPE_21__ {int argc; TYPE_5__* db; TYPE_6__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_25__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_24__ {int /*<<< orphan*/  syntaxerr; int /*<<< orphan*/  czero; } ;
struct TYPE_23__ {char* ptr; } ;
struct TYPE_22__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_STREAM ; 
 int /*<<< orphan*/  OBJ_STREAM ; 
 int TRIM_STRATEGY_MAXLEN ; 
 int TRIM_STRATEGY_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_6__*,long long*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_8__ server ; 
 TYPE_7__ shared ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,long long,int) ; 

void FUNC11(client *c) {
    robj *o;

    /* If the key does not exist, we are ok returning zero, that is, the
     * number of elements removed from the stream. */
    if ((o = FUNC5(c,c->argv[1],shared.czero)) == NULL
        || FUNC3(c,o,OBJ_STREAM)) return;
    stream *s = o->ptr;

    /* Argument parsing. */
    int trim_strategy = TRIM_STRATEGY_NONE;
    long long maxlen = -1;  /* If left to -1 no trimming is performed. */
    int approx_maxlen = 0;  /* If 1 only delete whole radix tree nodes, so
                               the maxium length is not applied verbatim. */
    int maxlen_arg_idx = 0; /* Index of the count in MAXLEN, for rewriting. */

    /* Parse options. */
    int i = 2; /* Start of options. */
    for (; i < c->argc; i++) {
        int moreargs = (c->argc-1) - i; /* Number of additional arguments. */
        char *opt = c->argv[i]->ptr;
        if (!FUNC8(opt,"maxlen") && moreargs) {
            approx_maxlen = 0;
            trim_strategy = TRIM_STRATEGY_MAXLEN;
            char *next = c->argv[i+1]->ptr;
            /* Check for the form MAXLEN ~ <count>. */
            if (moreargs >= 2 && next[0] == '~' && next[1] == '\0') {
                approx_maxlen = 1;
                i++;
            } else if (moreargs >= 2 && next[0] == '=' && next[1] == '\0') {
                i++;
            }
            if (FUNC4(c,c->argv[i+1],&maxlen,NULL)
                != C_OK) return;

            if (maxlen < 0) {
                FUNC1(c,"The MAXLEN argument must be >= 0.");
                return;
            }
            i++;
            maxlen_arg_idx = i;
        } else {
            FUNC0(c,shared.syntaxerr);
            return;
        }
    }

    /* Perform the trimming. */
    int64_t deleted = 0;
    if (trim_strategy == TRIM_STRATEGY_MAXLEN) {
        deleted = FUNC10(s,maxlen,approx_maxlen);
    } else {
        FUNC1(c,"XTRIM called without an option to trim the stream");
        return;
    }

    /* Propagate the write if needed. */
    if (deleted) {
        FUNC7(c->db,c->argv[1]);
        FUNC6(NOTIFY_STREAM,"xtrim",c->argv[1],c->db->id);
        server.dirty += deleted;
        if (approx_maxlen) FUNC9(c,s,maxlen_arg_idx);
    }
    FUNC2(c,deleted);
}