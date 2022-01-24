#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ variant_val_t ;
typedef  int /*<<< orphan*/  exec_ctx_t ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(exec_ctx_t *ctx)
{
    variant_val_t r, l;
    VARIANT v;
    HRESULT hres;

    FUNC2("\n");

    hres = FUNC5(ctx, &r);
    if(FUNC0(hres))
        return hres;

    hres = FUNC5(ctx, &l);
    if(FUNC1(hres)) {
        hres = FUNC3(l.v, r.v, &v);
        FUNC4(&l);
    }
    FUNC4(&r);
    if(FUNC0(hres))
        return hres;

    return FUNC6(ctx, &v);
}