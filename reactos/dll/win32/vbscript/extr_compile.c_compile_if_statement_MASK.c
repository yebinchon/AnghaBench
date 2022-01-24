#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ else_stat; TYPE_3__* elseifs; scalar_t__ if_stat; int /*<<< orphan*/  expr; } ;
typedef  TYPE_2__ if_statement_t ;
struct TYPE_18__ {scalar_t__ stat; int /*<<< orphan*/  expr; struct TYPE_18__* next; } ;
typedef  TYPE_3__ elseif_decl_t ;
struct TYPE_19__ {int /*<<< orphan*/  instr_cnt; } ;
typedef  TYPE_4__ compile_ctx_t ;
struct TYPE_16__ {int /*<<< orphan*/  uint; } ;
struct TYPE_20__ {TYPE_1__ arg1; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_jmp_false ; 
 int /*<<< orphan*/  S_OK ; 
 unsigned int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,unsigned int) ; 
 unsigned int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC9(compile_ctx_t *ctx, if_statement_t *stat)
{
    unsigned cnd_jmp, endif_label = 0;
    elseif_decl_t *elseif_decl;
    HRESULT hres;

    hres = FUNC2(ctx, stat->expr);
    if(FUNC0(hres))
        return hres;

    cnd_jmp = FUNC7(ctx, OP_jmp_false);
    if(!cnd_jmp)
        return E_OUTOFMEMORY;

    if(!FUNC4(ctx, 0))
        return E_OUTOFMEMORY;

    hres = FUNC3(ctx, NULL, stat->if_stat);
    if(FUNC0(hres))
        return hres;

    if(stat->else_stat || stat->elseifs) {
        endif_label = FUNC1(ctx);
        if(!endif_label)
            return E_OUTOFMEMORY;

        hres = FUNC8(ctx, OP_jmp, endif_label);
        if(FUNC0(hres))
            return hres;
    }

    for(elseif_decl = stat->elseifs; elseif_decl; elseif_decl = elseif_decl->next) {
        FUNC5(ctx, cnd_jmp)->arg1.uint = ctx->instr_cnt;

        hres = FUNC2(ctx, elseif_decl->expr);
        if(FUNC0(hres))
            return hres;

        cnd_jmp = FUNC7(ctx, OP_jmp_false);
        if(!cnd_jmp)
            return E_OUTOFMEMORY;

        if(!FUNC4(ctx, 0))
            return E_OUTOFMEMORY;

        hres = FUNC3(ctx, NULL, elseif_decl->stat);
        if(FUNC0(hres))
            return hres;

        hres = FUNC8(ctx, OP_jmp, endif_label);
        if(FUNC0(hres))
            return hres;
    }

    FUNC5(ctx, cnd_jmp)->arg1.uint = ctx->instr_cnt;

    if(stat->else_stat) {
        hres = FUNC3(ctx, NULL, stat->else_stat);
        if(FUNC0(hres))
            return hres;
    }

    if(endif_label)
        FUNC6(ctx, endif_label);
    return S_OK;
}