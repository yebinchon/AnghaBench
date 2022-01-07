
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vbsop_t ;
struct TYPE_3__ {int identifier; int args; int * obj_expr; } ;
typedef TYPE_1__ member_expression_t ;
typedef int expression_t ;
typedef int compile_ctx_t ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_assign_ident ;
 int OP_assign_member ;
 int OP_set_ident ;
 int OP_set_member ;
 int S_OK ;
 int compile_args (int *,int ,unsigned int*) ;
 int compile_expression (int *,int *) ;
 int emit_catch (int *,int ) ;
 int push_instr_bstr_uint (int *,int ,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_assignment(compile_ctx_t *ctx, member_expression_t *member_expr, expression_t *value_expr, BOOL is_set)
{
    unsigned args_cnt;
    vbsop_t op;
    HRESULT hres;

    if(member_expr->obj_expr) {
        hres = compile_expression(ctx, member_expr->obj_expr);
        if(FAILED(hres))
            return hres;

        op = is_set ? OP_set_member : OP_assign_member;
    }else {
        op = is_set ? OP_set_ident : OP_assign_ident;
    }

    hres = compile_expression(ctx, value_expr);
    if(FAILED(hres))
        return hres;

    hres = compile_args(ctx, member_expr->args, &args_cnt);
    if(FAILED(hres))
        return hres;

    hres = push_instr_bstr_uint(ctx, op, member_expr->identifier, args_cnt);
    if(FAILED(hres))
        return hres;

    if(!emit_catch(ctx, 0))
        return E_OUTOFMEMORY;

    return S_OK;
}
