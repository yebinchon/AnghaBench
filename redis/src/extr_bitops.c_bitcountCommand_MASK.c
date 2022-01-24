#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_9__ {int argc; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_10__ {int /*<<< orphan*/  czero; int /*<<< orphan*/  syntaxerr; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int LONG_STR_SIZE ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,long*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,long) ; 
 TYPE_2__ shared ; 

void FUNC7(client *c) {
    robj *o;
    long start, end, strlen;
    unsigned char *p;
    char llbuf[LONG_STR_SIZE];

    /* Lookup, check for type, and return 0 for non existing keys. */
    if ((o = FUNC5(c,c->argv[1],shared.czero)) == NULL ||
        FUNC2(c,o,OBJ_STRING)) return;
    p = FUNC4(o,&strlen,llbuf);

    /* Parse start/end range if any. */
    if (c->argc == 4) {
        if (FUNC3(c,c->argv[2],&start,NULL) != C_OK)
            return;
        if (FUNC3(c,c->argv[3],&end,NULL) != C_OK)
            return;
        /* Convert negative indexes */
        if (start < 0 && end < 0 && start > end) {
            FUNC0(c,shared.czero);
            return;
        }
        if (start < 0) start = strlen+start;
        if (end < 0) end = strlen+end;
        if (start < 0) start = 0;
        if (end < 0) end = 0;
        if (end >= strlen) end = strlen-1;
    } else if (c->argc == 2) {
        /* The whole string. */
        start = 0;
        end = strlen-1;
    } else {
        /* Syntax error. */
        FUNC0(c,shared.syntaxerr);
        return;
    }

    /* Precondition: end >= 0 && end < strlen, so the only condition where
     * zero can be returned is: start > end. */
    if (start > end) {
        FUNC0(c,shared.czero);
    } else {
        long bytes = end-start+1;

        FUNC1(c,FUNC6(p+start,bytes));
    }
}