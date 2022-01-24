#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  typeinfo; void* builtin_props; void* builtin_prop_cnt; TYPE_1__* ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  err_obj; TYPE_3__ err_desc; int /*<<< orphan*/  script_obj; int /*<<< orphan*/  global_obj; TYPE_3__ global_desc; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  ErrObj_tid ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GlobalObj_tid ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* err_props ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* global_props ; 

HRESULT FUNC5(script_ctx_t *ctx)
{
    HRESULT hres;

    ctx->global_desc.ctx = ctx;
    ctx->global_desc.builtin_prop_cnt = FUNC0(global_props);
    ctx->global_desc.builtin_props = global_props;

    hres = FUNC4(GlobalObj_tid, &ctx->global_desc.typeinfo);
    if(FUNC1(hres))
        return hres;

    hres = FUNC3(&ctx->global_desc, &ctx->global_obj);
    if(FUNC1(hres))
        return hres;

    hres = FUNC2(ctx, &ctx->script_obj);
    if(FUNC1(hres))
        return hres;

    ctx->err_desc.ctx = ctx;
    ctx->err_desc.builtin_prop_cnt = FUNC0(err_props);
    ctx->err_desc.builtin_props = err_props;

    hres = FUNC4(ErrObj_tid, &ctx->err_desc.typeinfo);
    if(FUNC1(hres))
        return hres;

    return FUNC3(&ctx->err_desc, &ctx->err_obj);
}