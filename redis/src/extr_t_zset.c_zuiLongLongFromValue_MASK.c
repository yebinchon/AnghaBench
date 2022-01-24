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
struct TYPE_3__ {int flags; char* ele; int /*<<< orphan*/  ell; int /*<<< orphan*/  elen; int /*<<< orphan*/ * estr; } ;
typedef  TYPE_1__ zsetopval ;

/* Variables and functions */
 int OPVAL_DIRTY_LL ; 
 int OPVAL_VALID_LL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(zsetopval *val) {
    if (!(val->flags & OPVAL_DIRTY_LL)) {
        val->flags |= OPVAL_DIRTY_LL;

        if (val->ele != NULL) {
            if (FUNC1(val->ele,FUNC0(val->ele),&val->ell))
                val->flags |= OPVAL_VALID_LL;
        } else if (val->estr != NULL) {
            if (FUNC1((char*)val->estr,val->elen,&val->ell))
                val->flags |= OPVAL_VALID_LL;
        } else {
            /* The long long was already set, flag as valid. */
            val->flags |= OPVAL_VALID_LL;
        }
    }
    return val->flags & OPVAL_VALID_LL;
}