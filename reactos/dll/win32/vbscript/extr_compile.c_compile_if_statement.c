
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ else_stat; TYPE_3__* elseifs; scalar_t__ if_stat; int expr; } ;
typedef TYPE_2__ if_statement_t ;
struct TYPE_18__ {scalar_t__ stat; int expr; struct TYPE_18__* next; } ;
typedef TYPE_3__ elseif_decl_t ;
struct TYPE_19__ {int instr_cnt; } ;
typedef TYPE_4__ compile_ctx_t ;
struct TYPE_16__ {int uint; } ;
struct TYPE_20__ {TYPE_1__ arg1; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_jmp ;
 int OP_jmp_false ;
 int S_OK ;
 unsigned int alloc_label (TYPE_4__*) ;
 int compile_expression (TYPE_4__*,int ) ;
 int compile_statement (TYPE_4__*,int *,scalar_t__) ;
 int emit_catch (TYPE_4__*,int ) ;
 TYPE_8__* instr_ptr (TYPE_4__*,unsigned int) ;
 int label_set_addr (TYPE_4__*,unsigned int) ;
 unsigned int push_instr (TYPE_4__*,int ) ;
 int push_instr_addr (TYPE_4__*,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_if_statement(compile_ctx_t *ctx, if_statement_t *stat)
{
    unsigned cnd_jmp, endif_label = 0;
    elseif_decl_t *elseif_decl;
    HRESULT hres;

    hres = compile_expression(ctx, stat->expr);
    if(FAILED(hres))
        return hres;

    cnd_jmp = push_instr(ctx, OP_jmp_false);
    if(!cnd_jmp)
        return E_OUTOFMEMORY;

    if(!emit_catch(ctx, 0))
        return E_OUTOFMEMORY;

    hres = compile_statement(ctx, ((void*)0), stat->if_stat);
    if(FAILED(hres))
        return hres;

    if(stat->else_stat || stat->elseifs) {
        endif_label = alloc_label(ctx);
        if(!endif_label)
            return E_OUTOFMEMORY;

        hres = push_instr_addr(ctx, OP_jmp, endif_label);
        if(FAILED(hres))
            return hres;
    }

    for(elseif_decl = stat->elseifs; elseif_decl; elseif_decl = elseif_decl->next) {
        instr_ptr(ctx, cnd_jmp)->arg1.uint = ctx->instr_cnt;

        hres = compile_expression(ctx, elseif_decl->expr);
        if(FAILED(hres))
            return hres;

        cnd_jmp = push_instr(ctx, OP_jmp_false);
        if(!cnd_jmp)
            return E_OUTOFMEMORY;

        if(!emit_catch(ctx, 0))
            return E_OUTOFMEMORY;

        hres = compile_statement(ctx, ((void*)0), elseif_decl->stat);
        if(FAILED(hres))
            return hres;

        hres = push_instr_addr(ctx, OP_jmp, endif_label);
        if(FAILED(hres))
            return hres;
    }

    instr_ptr(ctx, cnd_jmp)->arg1.uint = ctx->instr_cnt;

    if(stat->else_stat) {
        hres = compile_statement(ctx, ((void*)0), stat->else_stat);
        if(FAILED(hres))
            return hres;
    }

    if(endif_label)
        label_set_addr(ctx, endif_label);
    return S_OK;
}
