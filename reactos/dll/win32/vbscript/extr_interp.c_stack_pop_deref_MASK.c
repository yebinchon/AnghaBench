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
struct TYPE_3__ {int /*<<< orphan*/ * v; int /*<<< orphan*/  owned; } ;
typedef  TYPE_1__ variant_val_t ;
typedef  int /*<<< orphan*/  exec_ctx_t ;
typedef  int /*<<< orphan*/  VARIANT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int VT_BYREF ; 
 int VT_VARIANT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(exec_ctx_t *ctx, variant_val_t *r)
{
    VARIANT *v;

    v = FUNC2(ctx);
    if(FUNC1(v) == (VT_BYREF|VT_VARIANT)) {
        r->owned = FALSE;
        r->v = FUNC0(v);
    }else {
        r->owned = TRUE;
        r->v = v;
    }
}