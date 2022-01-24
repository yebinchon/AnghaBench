#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ type; } ;
struct TYPE_15__ {TYPE_1__ stat; scalar_t__ expr; int /*<<< orphan*/  body; } ;
typedef  TYPE_2__ while_statement_t ;
typedef  int /*<<< orphan*/  vbsop_t ;
struct TYPE_16__ {int /*<<< orphan*/  while_end_label; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ statement_ctx_t ;
struct TYPE_17__ {unsigned int instr_cnt; } ;
typedef  TYPE_4__ compile_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_jmp_false ; 
 int /*<<< orphan*/  OP_jmp_true ; 
 scalar_t__ STAT_DOUNTIL ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC7(compile_ctx_t *ctx, while_statement_t *stat)
{
    statement_ctx_t loop_ctx = {0};
    unsigned start_addr;
    vbsop_t jmp_op;
    HRESULT hres;

    start_addr = ctx->instr_cnt;

    if(!(loop_ctx.while_end_label = FUNC1(ctx)))
        return E_OUTOFMEMORY;

    hres = FUNC3(ctx, &loop_ctx, stat->body);
    if(FUNC0(hres))
        return hres;

    if(stat->expr) {
        hres = FUNC2(ctx, stat->expr);
        if(FUNC0(hres))
            return hres;

        jmp_op = stat->stat.type == STAT_DOUNTIL ? OP_jmp_false : OP_jmp_true;
    }else {
        jmp_op = OP_jmp;
    }

    hres = FUNC6(ctx, jmp_op, start_addr);
    if(FUNC0(hres))
        return hres;

    FUNC5(ctx, loop_ctx.while_end_label);

    if(!FUNC4(ctx, 0))
        return E_OUTOFMEMORY;

    return S_OK;
}