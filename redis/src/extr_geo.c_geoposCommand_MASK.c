#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_8__ {int argc; TYPE_2__** argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ client ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  OBJ_ZSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double,double*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

void FUNC7(client *c) {
    int j;

    /* Look up the requested zset */
    robj *zobj = FUNC5(c->db, c->argv[1]);
    if (zobj && FUNC3(c, zobj, OBJ_ZSET)) return;

    /* Report elements one after the other, using a null bulk reply for
     * missing elements. */
    FUNC0(c,c->argc-2);
    for (j = 2; j < c->argc; j++) {
        double score;
        if (!zobj || FUNC6(zobj, c->argv[j]->ptr, &score) == C_ERR) {
            FUNC2(c);
        } else {
            /* Decode... */
            double xy[2];
            if (!FUNC4(score,xy)) {
                FUNC2(c);
                continue;
            }
            FUNC0(c,2);
            FUNC1(c,xy[0]);
            FUNC1(c,xy[1]);
        }
    }
}