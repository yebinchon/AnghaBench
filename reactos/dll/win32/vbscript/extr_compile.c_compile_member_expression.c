
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int identifier; int * obj_expr; int args; } ;
typedef TYPE_1__ member_expression_t ;
typedef int expression_t ;
typedef int compile_ctx_t ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 int OP_icall ;
 int OP_icallv ;
 int OP_mcall ;
 int OP_mcallv ;
 int TRUE ;
 int compile_args (int *,int ,unsigned int*) ;
 int compile_expression (int *,int *) ;
 int * lookup_const_decls (int *,int ,int ) ;
 int push_instr_bstr_uint (int *,int ,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_member_expression(compile_ctx_t *ctx, member_expression_t *expr, BOOL ret_val)
{
    unsigned arg_cnt = 0;
    HRESULT hres;

    if(ret_val && !expr->args) {
        expression_t *const_expr;

        const_expr = lookup_const_decls(ctx, expr->identifier, TRUE);
        if(const_expr)
            return compile_expression(ctx, const_expr);
    }

    hres = compile_args(ctx, expr->args, &arg_cnt);
    if(FAILED(hres))
        return hres;

    if(expr->obj_expr) {
        hres = compile_expression(ctx, expr->obj_expr);
        if(FAILED(hres))
            return hres;

        hres = push_instr_bstr_uint(ctx, ret_val ? OP_mcall : OP_mcallv, expr->identifier, arg_cnt);
    }else {
        hres = push_instr_bstr_uint(ctx, ret_val ? OP_icall : OP_icallv, expr->identifier, arg_cnt);
    }

    return hres;
}
