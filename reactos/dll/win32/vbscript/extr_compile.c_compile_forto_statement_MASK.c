#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int member_0; scalar_t__ for_end_label; } ;
typedef  TYPE_3__ statement_ctx_t ;
struct TYPE_11__ {int /*<<< orphan*/  body; scalar_t__ step_expr; scalar_t__ to_expr; scalar_t__ from_expr; int /*<<< orphan*/  identifier; } ;
typedef  TYPE_4__ forto_statement_t ;
typedef  int /*<<< orphan*/  compile_ctx_t ;
struct TYPE_9__ {void* bstr; scalar_t__ uint; } ;
struct TYPE_8__ {void* bstr; scalar_t__ uint; } ;
struct TYPE_12__ {TYPE_2__ arg1; TYPE_1__ arg2; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  void* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_assign_ident ; 
 int /*<<< orphan*/  OP_incc ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_pop ; 
 int /*<<< orphan*/  OP_short ; 
 int /*<<< orphan*/  OP_step ; 
 int /*<<< orphan*/  OP_val ; 
 int /*<<< orphan*/  S_OK ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC12(compile_ctx_t *ctx, forto_statement_t *stat)
{
    statement_ctx_t loop_ctx = {2};
    unsigned step_instr, instr;
    BSTR identifier;
    HRESULT hres;

    identifier = FUNC1(ctx, stat->identifier);
    if(!identifier)
        return E_OUTOFMEMORY;

    hres = FUNC3(ctx, stat->from_expr);
    if(FUNC0(hres))
        return hres;

    /* FIXME: Assign should happen after both expressions evaluation. */
    instr = FUNC8(ctx, OP_assign_ident);
    if(!instr)
        return E_OUTOFMEMORY;
    FUNC6(ctx, instr)->arg1.bstr = identifier;
    FUNC6(ctx, instr)->arg2.uint = 0;

    hres = FUNC3(ctx, stat->to_expr);
    if(FUNC0(hres))
        return hres;

    if(!FUNC8(ctx, OP_val))
        return E_OUTOFMEMORY;

    if(stat->step_expr) {
        hres = FUNC3(ctx, stat->step_expr);
        if(FUNC0(hres))
            return hres;

        if(!FUNC8(ctx, OP_val))
            return E_OUTOFMEMORY;
    }else {
        hres = FUNC10(ctx, OP_short, 1);
        if(FUNC0(hres))
            return hres;
    }

    loop_ctx.for_end_label = FUNC2(ctx);
    if(!loop_ctx.for_end_label)
        return E_OUTOFMEMORY;

    step_instr = FUNC8(ctx, OP_step);
    if(!step_instr)
        return E_OUTOFMEMORY;
    FUNC6(ctx, step_instr)->arg2.bstr = identifier;
    FUNC6(ctx, step_instr)->arg1.uint = loop_ctx.for_end_label;

    if(!FUNC5(ctx, 2))
        return E_OUTOFMEMORY;

    hres = FUNC4(ctx, &loop_ctx, stat->body);
    if(FUNC0(hres))
        return hres;

    /* FIXME: Error handling can't be done compatible with native using OP_incc here. */
    instr = FUNC8(ctx, OP_incc);
    if(!instr)
        return E_OUTOFMEMORY;
    FUNC6(ctx, instr)->arg1.bstr = identifier;

    hres = FUNC9(ctx, OP_jmp, step_instr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC11(ctx, OP_pop, 2);
    if(FUNC0(hres))
        return hres;

    FUNC7(ctx, loop_ctx.for_end_label);

    /* FIXME: reconsider after OP_incc fixup. */
    if(!FUNC5(ctx, 0))
        return E_OUTOFMEMORY;

    return S_OK;
}