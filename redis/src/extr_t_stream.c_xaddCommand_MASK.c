#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_15__ ;
typedef  struct TYPE_25__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  streamID ;
typedef  int /*<<< orphan*/  stream ;
struct TYPE_27__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_28__ {int argc; TYPE_6__** argv; TYPE_11__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_29__ {char* ptr; } ;
struct TYPE_26__ {scalar_t__* blocked_clients_by_type; int /*<<< orphan*/  dirty; } ;
struct TYPE_25__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 size_t BLOCKED_STREAM ; 
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_6__*,long long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,TYPE_1__*) ; 
 TYPE_15__ server ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_6__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,long long,int) ; 
 TYPE_1__* FUNC14 (TYPE_2__*,TYPE_6__*) ; 

void FUNC15(client *c) {
    streamID id;
    int id_given = 0; /* Was an ID different than "*" specified? */
    long long maxlen = -1;  /* If left to -1 no trimming is performed. */
    int approx_maxlen = 0;  /* If 1 only delete whole radix tree nodes, so
                               the maxium length is not applied verbatim. */
    int maxlen_arg_idx = 0; /* Index of the count in MAXLEN, for rewriting. */

    /* Parse options. */
    int i = 2; /* This is the first argument position where we could
                  find an option, or the ID. */
    for (; i < c->argc; i++) {
        int moreargs = (c->argc-1) - i; /* Number of additional arguments. */
        char *opt = c->argv[i]->ptr;
        if (opt[0] == '*' && opt[1] == '\0') {
            /* This is just a fast path for the common case of auto-ID
             * creation. */
            break;
        } else if (!FUNC9(opt,"maxlen") && moreargs) {
            approx_maxlen = 0;
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
                FUNC0(c,"The MAXLEN argument must be >= 0.");
                return;
            }
            i++;
            maxlen_arg_idx = i;
        } else {
            /* If we are here is a syntax error or a valid ID. */
            if (FUNC11(c,c->argv[i],&id,0) != C_OK) return;
            id_given = 1;
            break;
        }
    }
    int field_pos = i+1;

    /* Check arity. */
    if ((c->argc - field_pos) < 2 || ((c->argc-field_pos) % 2) == 1) {
        FUNC0(c,"wrong number of arguments for XADD");
        return;
    }

    /* Lookup the stream at key. */
    robj *o;
    stream *s;
    if ((o = FUNC14(c,c->argv[1])) == NULL) return;
    s = o->ptr;

    /* Append using the low level function and return the ID. */
    if (FUNC10(s,c->argv+field_pos,(c->argc-field_pos)/2,
        &id, id_given ? &id : NULL)
        == C_ERR)
    {
        FUNC0(c,"The ID specified in XADD is equal or smaller than the "
                        "target stream top item");
        return;
    }
    FUNC1(c,&id);

    FUNC8(c->db,c->argv[1]);
    FUNC5(NOTIFY_STREAM,"xadd",c->argv[1],c->db->id);
    server.dirty++;

    if (maxlen >= 0) {
        /* Notify xtrim event if needed. */
        if (FUNC13(s,maxlen,approx_maxlen)) {
            FUNC5(NOTIFY_STREAM,"xtrim",c->argv[1],c->db->id);
        }
        if (approx_maxlen) FUNC12(c,s,maxlen_arg_idx);
    }

    /* Let's rewrite the ID argument with the one actually generated for
     * AOF/replication propagation. */
    robj *idarg = FUNC2(&id);
    FUNC6(c,i,idarg);
    FUNC3(idarg);

    /* We need to signal to blocked clients that there is new data on this
     * stream. */
    if (server.blocked_clients_by_type[BLOCKED_STREAM])
        FUNC7(c->db, c->argv[1]);
}