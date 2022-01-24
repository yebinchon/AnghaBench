#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_12__ {int argc; size_t resp; TYPE_4__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_14__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_13__ {int /*<<< orphan*/ * null; int /*<<< orphan*/  syntaxerr; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  OBJ_ZSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double,double*) ; 
 double FUNC5 (TYPE_1__*,TYPE_4__*) ; 
 double FUNC6 (double,double,double,double) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ shared ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

void FUNC9(client *c) {
    double to_meter = 1;

    /* Check if there is the unit to extract, otherwise assume meters. */
    if (c->argc == 5) {
        to_meter = FUNC5(c,c->argv[4]);
        if (to_meter < 0) return;
    } else if (c->argc > 5) {
        FUNC0(c,shared.syntaxerr);
        return;
    }

    /* Look up the requested zset */
    robj *zobj = NULL;
    if ((zobj = FUNC7(c, c->argv[1], shared.null[c->resp]))
        == NULL || FUNC3(c, zobj, OBJ_ZSET)) return;

    /* Get the scores. We need both otherwise NULL is returned. */
    double score1, score2, xyxy[4];
    if (FUNC8(zobj, c->argv[2]->ptr, &score1) == C_ERR ||
        FUNC8(zobj, c->argv[3]->ptr, &score2) == C_ERR)
    {
        FUNC2(c);
        return;
    }

    /* Decode & compute the distance. */
    if (!FUNC4(score1,xyxy) || !FUNC4(score2,xyxy+2))
        FUNC2(c);
    else
        FUNC1(c,
            FUNC6(xyxy[0],xyxy[1],xyxy[2],xyxy[3]) / to_meter);
}