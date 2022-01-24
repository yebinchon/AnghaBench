#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  store; int /*<<< orphan*/ * v; scalar_t__ owned; } ;
typedef  TYPE_1__ variant_val_t ;
struct TYPE_8__ {int /*<<< orphan*/  script; } ;
typedef  TYPE_2__ exec_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TRUE ; 
 scalar_t__ VT_DISPATCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC6(exec_ctx_t *ctx, variant_val_t *r)
{
    FUNC5(ctx, r);

    if(FUNC3(r->v) == VT_DISPATCH) {
        HRESULT hres;

        hres = FUNC4(ctx->script, FUNC2(r->v), &r->store);
        if(r->owned)
            FUNC1(FUNC2(r->v));
        if(FUNC0(hres))
            return hres;

        r->owned = TRUE;
        r->v = &r->store;
    }

    return S_OK;
}