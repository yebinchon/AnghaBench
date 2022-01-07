
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int member_0; int for_end_label; } ;
typedef TYPE_1__ statement_ctx_t ;
struct TYPE_16__ {int identifier; int body; int group_expr; } ;
typedef TYPE_2__ foreach_statement_t ;
struct TYPE_17__ {unsigned int instr_cnt; } ;
typedef TYPE_3__ compile_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_empty ;
 int OP_enumnext ;
 int OP_jmp ;
 int OP_newenum ;
 int S_OK ;
 int alloc_label (TYPE_3__*) ;
 int compile_expression (TYPE_3__*,int ) ;
 int compile_statement (TYPE_3__*,TYPE_1__*,int ) ;
 int emit_catch (TYPE_3__*,int) ;
 int label_set_addr (TYPE_3__*,int ) ;
 int push_instr (TYPE_3__*,int ) ;
 int push_instr_addr (TYPE_3__*,int ,unsigned int) ;
 int push_instr_uint_bstr (TYPE_3__*,int ,int ,int ) ;

__attribute__((used)) static HRESULT compile_foreach_statement(compile_ctx_t *ctx, foreach_statement_t *stat)
{
    statement_ctx_t loop_ctx = {1};
    unsigned loop_start;
    HRESULT hres;


    if(!push_instr(ctx, OP_empty))
        return E_OUTOFMEMORY;

    hres = compile_expression(ctx, stat->group_expr);
    if(FAILED(hres))
        return hres;

    if(!push_instr(ctx, OP_newenum))
        return E_OUTOFMEMORY;

    if(!(loop_ctx.for_end_label = alloc_label(ctx)))
        return E_OUTOFMEMORY;

    hres = push_instr_uint_bstr(ctx, OP_enumnext, loop_ctx.for_end_label, stat->identifier);
    if(FAILED(hres))
        return hres;

    if(!emit_catch(ctx, 1))
        return E_OUTOFMEMORY;

    loop_start = ctx->instr_cnt;
    hres = compile_statement(ctx, &loop_ctx, stat->body);
    if(FAILED(hres))
        return hres;


    hres = push_instr_uint_bstr(ctx, OP_enumnext, loop_ctx.for_end_label, stat->identifier);
    if(FAILED(hres))
        return hres;

    hres = push_instr_addr(ctx, OP_jmp, loop_start);
    if(FAILED(hres))
        return hres;

    label_set_addr(ctx, loop_ctx.for_end_label);
    return S_OK;
}
