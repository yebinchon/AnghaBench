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
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_17__ {size_t resp; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_18__ {int /*<<< orphan*/ * null; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ZSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_5__ shared ; 
 long FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC7(client *c, int reverse) {
    robj *key = c->argv[1];
    robj *ele = c->argv[2];
    robj *zobj;
    long rank;

    if ((zobj = FUNC3(c,key,shared.null[c->resp])) == NULL ||
        FUNC2(c,zobj,OBJ_ZSET)) return;

    FUNC5(c,ele,FUNC4(ele));
    rank = FUNC6(zobj,ele->ptr,reverse);
    if (rank >= 0) {
        FUNC0(c,rank);
    } else {
        FUNC1(c);
    }
}