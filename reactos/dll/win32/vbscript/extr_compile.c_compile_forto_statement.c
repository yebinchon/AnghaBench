
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int member_0; scalar_t__ for_end_label; } ;
typedef TYPE_3__ statement_ctx_t ;
struct TYPE_11__ {int body; scalar_t__ step_expr; scalar_t__ to_expr; scalar_t__ from_expr; int identifier; } ;
typedef TYPE_4__ forto_statement_t ;
typedef int compile_ctx_t ;
struct TYPE_9__ {void* bstr; scalar_t__ uint; } ;
struct TYPE_8__ {void* bstr; scalar_t__ uint; } ;
struct TYPE_12__ {TYPE_2__ arg1; TYPE_1__ arg2; } ;
typedef int HRESULT ;
typedef void* BSTR ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_assign_ident ;
 int OP_incc ;
 int OP_jmp ;
 int OP_pop ;
 int OP_short ;
 int OP_step ;
 int OP_val ;
 int S_OK ;
 void* alloc_bstr_arg (int *,int ) ;
 scalar_t__ alloc_label (int *) ;
 int compile_expression (int *,scalar_t__) ;
 int compile_statement (int *,TYPE_3__*,int ) ;
 int emit_catch (int *,int) ;
 TYPE_5__* instr_ptr (int *,unsigned int) ;
 int label_set_addr (int *,scalar_t__) ;
 unsigned int push_instr (int *,int ) ;
 int push_instr_addr (int *,int ,unsigned int) ;
 int push_instr_int (int *,int ,int) ;
 int push_instr_uint (int *,int ,int) ;

__attribute__((used)) static HRESULT compile_forto_statement(compile_ctx_t *ctx, forto_statement_t *stat)
{
    statement_ctx_t loop_ctx = {2};
    unsigned step_instr, instr;
    BSTR identifier;
    HRESULT hres;

    identifier = alloc_bstr_arg(ctx, stat->identifier);
    if(!identifier)
        return E_OUTOFMEMORY;

    hres = compile_expression(ctx, stat->from_expr);
    if(FAILED(hres))
        return hres;


    instr = push_instr(ctx, OP_assign_ident);
    if(!instr)
        return E_OUTOFMEMORY;
    instr_ptr(ctx, instr)->arg1.bstr = identifier;
    instr_ptr(ctx, instr)->arg2.uint = 0;

    hres = compile_expression(ctx, stat->to_expr);
    if(FAILED(hres))
        return hres;

    if(!push_instr(ctx, OP_val))
        return E_OUTOFMEMORY;

    if(stat->step_expr) {
        hres = compile_expression(ctx, stat->step_expr);
        if(FAILED(hres))
            return hres;

        if(!push_instr(ctx, OP_val))
            return E_OUTOFMEMORY;
    }else {
        hres = push_instr_int(ctx, OP_short, 1);
        if(FAILED(hres))
            return hres;
    }

    loop_ctx.for_end_label = alloc_label(ctx);
    if(!loop_ctx.for_end_label)
        return E_OUTOFMEMORY;

    step_instr = push_instr(ctx, OP_step);
    if(!step_instr)
        return E_OUTOFMEMORY;
    instr_ptr(ctx, step_instr)->arg2.bstr = identifier;
    instr_ptr(ctx, step_instr)->arg1.uint = loop_ctx.for_end_label;

    if(!emit_catch(ctx, 2))
        return E_OUTOFMEMORY;

    hres = compile_statement(ctx, &loop_ctx, stat->body);
    if(FAILED(hres))
        return hres;


    instr = push_instr(ctx, OP_incc);
    if(!instr)
        return E_OUTOFMEMORY;
    instr_ptr(ctx, instr)->arg1.bstr = identifier;

    hres = push_instr_addr(ctx, OP_jmp, step_instr);
    if(FAILED(hres))
        return hres;

    hres = push_instr_uint(ctx, OP_pop, 2);
    if(FAILED(hres))
        return hres;

    label_set_addr(ctx, loop_ctx.for_end_label);


    if(!emit_catch(ctx, 0))
        return E_OUTOFMEMORY;

    return S_OK;
}
