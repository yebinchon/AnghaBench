#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ type; } ;
struct TYPE_20__ {int /*<<< orphan*/  body; TYPE_1__ stat; int /*<<< orphan*/  expr; } ;
typedef  TYPE_3__ while_statement_t ;
struct TYPE_21__ {int /*<<< orphan*/  while_end_label; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ statement_ctx_t ;
struct TYPE_22__ {unsigned int instr_cnt; } ;
typedef  TYPE_5__ compile_ctx_t ;
struct TYPE_19__ {unsigned int uint; } ;
struct TYPE_23__ {TYPE_2__ arg1; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_jmp_false ; 
 int /*<<< orphan*/  OP_jmp_true ; 
 scalar_t__ STAT_UNTIL ; 
 scalar_t__ STAT_WHILE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC5 (TYPE_5__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC9(compile_ctx_t *ctx, while_statement_t *stat)
{
    statement_ctx_t stat_ctx = {0}, *loop_ctx;
    unsigned start_addr;
    unsigned jmp_end;
    HRESULT hres;

    start_addr = ctx->instr_cnt;

    hres = FUNC2(ctx, stat->expr);
    if(FUNC0(hres))
        return hres;

    jmp_end = FUNC7(ctx, stat->stat.type == STAT_UNTIL ? OP_jmp_true : OP_jmp_false);
    if(!jmp_end)
        return E_OUTOFMEMORY;

    if(!FUNC4(ctx, 0))
        return E_OUTOFMEMORY;

    if(stat->stat.type == STAT_WHILE) {
        loop_ctx = NULL;
    }else {
        if(!(stat_ctx.while_end_label = FUNC1(ctx)))
            return E_OUTOFMEMORY;
        loop_ctx = &stat_ctx;
    }

    hres = FUNC3(ctx, loop_ctx, stat->body);
    if(FUNC0(hres))
        return hres;

    hres = FUNC8(ctx, OP_jmp, start_addr);
    if(FUNC0(hres))
        return hres;

    FUNC5(ctx, jmp_end)->arg1.uint = ctx->instr_cnt;

    if(loop_ctx)
        FUNC6(ctx, stat_ctx.while_end_label);

    return S_OK;
}