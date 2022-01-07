
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ type; } ;
struct TYPE_15__ {TYPE_1__ stat; scalar_t__ expr; int body; } ;
typedef TYPE_2__ while_statement_t ;
typedef int vbsop_t ;
struct TYPE_16__ {int while_end_label; int member_0; } ;
typedef TYPE_3__ statement_ctx_t ;
struct TYPE_17__ {unsigned int instr_cnt; } ;
typedef TYPE_4__ compile_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_jmp ;
 int OP_jmp_false ;
 int OP_jmp_true ;
 scalar_t__ STAT_DOUNTIL ;
 int S_OK ;
 int alloc_label (TYPE_4__*) ;
 int compile_expression (TYPE_4__*,scalar_t__) ;
 int compile_statement (TYPE_4__*,TYPE_3__*,int ) ;
 int emit_catch (TYPE_4__*,int ) ;
 int label_set_addr (TYPE_4__*,int ) ;
 int push_instr_addr (TYPE_4__*,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_dowhile_statement(compile_ctx_t *ctx, while_statement_t *stat)
{
    statement_ctx_t loop_ctx = {0};
    unsigned start_addr;
    vbsop_t jmp_op;
    HRESULT hres;

    start_addr = ctx->instr_cnt;

    if(!(loop_ctx.while_end_label = alloc_label(ctx)))
        return E_OUTOFMEMORY;

    hres = compile_statement(ctx, &loop_ctx, stat->body);
    if(FAILED(hres))
        return hres;

    if(stat->expr) {
        hres = compile_expression(ctx, stat->expr);
        if(FAILED(hres))
            return hres;

        jmp_op = stat->stat.type == STAT_DOUNTIL ? OP_jmp_false : OP_jmp_true;
    }else {
        jmp_op = OP_jmp;
    }

    hres = push_instr_addr(ctx, jmp_op, start_addr);
    if(FAILED(hres))
        return hres;

    label_set_addr(ctx, loop_ctx.while_end_label);

    if(!emit_catch(ctx, 0))
        return E_OUTOFMEMORY;

    return S_OK;
}
