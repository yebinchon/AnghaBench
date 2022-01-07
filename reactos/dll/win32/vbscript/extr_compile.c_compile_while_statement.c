
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ type; } ;
struct TYPE_20__ {int body; TYPE_1__ stat; int expr; } ;
typedef TYPE_3__ while_statement_t ;
struct TYPE_21__ {int while_end_label; int member_0; } ;
typedef TYPE_4__ statement_ctx_t ;
struct TYPE_22__ {unsigned int instr_cnt; } ;
typedef TYPE_5__ compile_ctx_t ;
struct TYPE_19__ {unsigned int uint; } ;
struct TYPE_23__ {TYPE_2__ arg1; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_jmp ;
 int OP_jmp_false ;
 int OP_jmp_true ;
 scalar_t__ STAT_UNTIL ;
 scalar_t__ STAT_WHILE ;
 int S_OK ;
 int alloc_label (TYPE_5__*) ;
 int compile_expression (TYPE_5__*,int ) ;
 int compile_statement (TYPE_5__*,TYPE_4__*,int ) ;
 int emit_catch (TYPE_5__*,int ) ;
 TYPE_9__* instr_ptr (TYPE_5__*,unsigned int) ;
 int label_set_addr (TYPE_5__*,int ) ;
 unsigned int push_instr (TYPE_5__*,int ) ;
 int push_instr_addr (TYPE_5__*,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_while_statement(compile_ctx_t *ctx, while_statement_t *stat)
{
    statement_ctx_t stat_ctx = {0}, *loop_ctx;
    unsigned start_addr;
    unsigned jmp_end;
    HRESULT hres;

    start_addr = ctx->instr_cnt;

    hres = compile_expression(ctx, stat->expr);
    if(FAILED(hres))
        return hres;

    jmp_end = push_instr(ctx, stat->stat.type == STAT_UNTIL ? OP_jmp_true : OP_jmp_false);
    if(!jmp_end)
        return E_OUTOFMEMORY;

    if(!emit_catch(ctx, 0))
        return E_OUTOFMEMORY;

    if(stat->stat.type == STAT_WHILE) {
        loop_ctx = ((void*)0);
    }else {
        if(!(stat_ctx.while_end_label = alloc_label(ctx)))
            return E_OUTOFMEMORY;
        loop_ctx = &stat_ctx;
    }

    hres = compile_statement(ctx, loop_ctx, stat->body);
    if(FAILED(hres))
        return hres;

    hres = push_instr_addr(ctx, OP_jmp, start_addr);
    if(FAILED(hres))
        return hres;

    instr_ptr(ctx, jmp_end)->arg1.uint = ctx->instr_cnt;

    if(loop_ctx)
        label_set_addr(ctx, stat_ctx.while_end_label);

    return S_OK;
}
