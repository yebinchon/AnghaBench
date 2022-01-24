#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  streamID ;
typedef  int /*<<< orphan*/  stream ;
struct TYPE_17__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_18__ {int argc; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_19__ {int /*<<< orphan*/  emptyarray; int /*<<< orphan*/  syntaxerr; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  OBJ_STREAM ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*,long long*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_7__ shared ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(client *c, int rev) {
    robj *o;
    stream *s;
    streamID startid, endid;
    long long count = -1;
    robj *startarg = rev ? c->argv[3] : c->argv[2];
    robj *endarg = rev ? c->argv[2] : c->argv[3];

    if (FUNC6(c,startarg,&startid,0) == C_ERR) return;
    if (FUNC6(c,endarg,&endid,UINT64_MAX) == C_ERR) return;

    /* Parse the COUNT option if any. */
    if (c->argc > 4) {
        for (int j = 4; j < c->argc; j++) {
            int additional = c->argc-j-1;
            if (FUNC5(c->argv[j]->ptr,"COUNT") == 0 && additional >= 1) {
                if (FUNC3(c,c->argv[j+1],&count,NULL)
                    != C_OK) return;
                if (count < 0) count = 0;
                j++; /* Consume additional arg. */
            } else {
                FUNC0(c,shared.syntaxerr);
                return;
            }
        }
    }

    /* Return the specified range to the user. */
    if ((o = FUNC4(c,c->argv[1],shared.emptyarray)) == NULL ||
         FUNC2(c,o,OBJ_STREAM)) return;

    s = o->ptr;

    if (count == 0) {
        FUNC1(c);
    } else {
        if (count == -1) count = 0;
        FUNC7(c,s,&startid,&endid,count,rev,NULL,NULL,0,NULL);
    }
}