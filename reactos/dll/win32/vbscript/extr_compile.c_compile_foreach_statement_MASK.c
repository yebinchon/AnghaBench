#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int member_0; int /*<<< orphan*/  for_end_label; } ;
typedef  TYPE_1__ statement_ctx_t ;
struct TYPE_16__ {int /*<<< orphan*/  identifier; int /*<<< orphan*/  body; int /*<<< orphan*/  group_expr; } ;
typedef  TYPE_2__ foreach_statement_t ;
struct TYPE_17__ {unsigned int instr_cnt; } ;
typedef  TYPE_3__ compile_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_empty ; 
 int /*<<< orphan*/  OP_enumnext ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_newenum ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(compile_ctx_t *ctx, foreach_statement_t *stat)
{
    statement_ctx_t loop_ctx = {1};
    unsigned loop_start;
    HRESULT hres;

    /* Preserve a place on the stack in case we throw before having proper enum collection. */
    if(!FUNC6(ctx, OP_empty))
        return E_OUTOFMEMORY;

    hres = FUNC2(ctx, stat->group_expr);
    if(FUNC0(hres))
        return hres;

    if(!FUNC6(ctx, OP_newenum))
        return E_OUTOFMEMORY;

    if(!(loop_ctx.for_end_label = FUNC1(ctx)))
        return E_OUTOFMEMORY;

    hres = FUNC8(ctx, OP_enumnext, loop_ctx.for_end_label, stat->identifier);
    if(FUNC0(hres))
        return hres;

    if(!FUNC4(ctx, 1))
        return E_OUTOFMEMORY;

    loop_start = ctx->instr_cnt;
    hres = FUNC3(ctx, &loop_ctx, stat->body);
    if(FUNC0(hres))
        return hres;

    /* We need a separated enumnext here, because we need to jump out of the loop on exception. */
    hres = FUNC8(ctx, OP_enumnext, loop_ctx.for_end_label, stat->identifier);
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx, OP_jmp, loop_start);
    if(FUNC0(hres))
        return hres;

    FUNC5(ctx, loop_ctx.for_end_label);
    return S_OK;
}