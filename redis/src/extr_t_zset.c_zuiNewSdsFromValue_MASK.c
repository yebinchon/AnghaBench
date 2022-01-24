#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; int /*<<< orphan*/  ell; int /*<<< orphan*/  elen; scalar_t__ estr; int /*<<< orphan*/ * ele; } ;
typedef  TYPE_1__ zsetopval ;
typedef  int /*<<< orphan*/ * sds ;

/* Variables and functions */
 int OPVAL_DIRTY_SDS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 

sds FUNC3(zsetopval *val) {
    if (val->flags & OPVAL_DIRTY_SDS) {
        /* We have already one to return! */
        sds ele = val->ele;
        val->flags &= ~OPVAL_DIRTY_SDS;
        val->ele = NULL;
        return ele;
    } else if (val->ele) {
        return FUNC0(val->ele);
    } else if (val->estr) {
        return FUNC2((char*)val->estr,val->elen);
    } else {
        return FUNC1(val->ell);
    }
}