
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* subexpr; } ;
typedef TYPE_1__ unary_expression_t ;
struct TYPE_10__ {int value; } ;
typedef TYPE_2__ string_expression_t ;
typedef int member_expression_t ;
struct TYPE_11__ {int value; } ;
typedef TYPE_3__ int_expression_t ;
struct TYPE_12__ {int type; } ;
typedef TYPE_4__ expression_t ;
struct TYPE_13__ {int value; } ;
typedef TYPE_5__ double_expression_t ;
typedef int compile_ctx_t ;
struct TYPE_14__ {int value; } ;
typedef TYPE_6__ bool_expression_t ;
typedef int binary_expression_t ;
typedef int HRESULT ;


 int DISP_E_PARAMNOTFOUND ;
 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 int FIXME (char*,int) ;
 int OP_add ;
 int OP_and ;
 int OP_bool ;
 int OP_concat ;
 int OP_div ;
 int OP_double ;
 int OP_empty ;
 int OP_equal ;
 int OP_eqv ;
 int OP_exp ;
 int OP_gt ;
 int OP_gteq ;
 int OP_hres ;
 int OP_idiv ;
 int OP_imp ;
 int OP_is ;
 int OP_long ;
 int OP_lt ;
 int OP_lteq ;
 int OP_me ;
 int OP_mod ;
 int OP_mul ;
 int OP_neg ;
 int OP_nequal ;
 int OP_new ;
 int OP_not ;
 int OP_nothing ;
 int OP_null ;
 int OP_or ;
 int OP_short ;
 int OP_string ;
 int OP_sub ;
 int OP_xor ;
 int S_OK ;
 int TRUE ;
 int compile_binary_expression (int *,int *,int ) ;
 int compile_member_expression (int *,int *,int ) ;
 int compile_unary_expression (int *,TYPE_1__*,int ) ;
 int push_instr (int *,int ) ;
 int push_instr_double (int *,int ,int ) ;
 int push_instr_int (int *,int ,int ) ;
 int push_instr_str (int *,int ,int ) ;

__attribute__((used)) static HRESULT compile_expression(compile_ctx_t *ctx, expression_t *expr)
{
    switch(expr->type) {
    case 162:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_add);
    case 161:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_and);
    case 160:
        return push_instr_int(ctx, OP_bool, ((bool_expression_t*)expr)->value);
    case 159:
        return compile_expression(ctx, ((unary_expression_t*)expr)->subexpr);
    case 158:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_concat);
    case 157:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_div);
    case 156:
        return push_instr_double(ctx, OP_double, ((double_expression_t*)expr)->value);
    case 155:
        return push_instr(ctx, OP_empty) ? S_OK : E_OUTOFMEMORY;
    case 154:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_equal);
    case 153:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_eqv);
    case 152:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_exp);
    case 151:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_gt);
    case 150:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_gteq);
    case 149:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_idiv);
    case 147:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_is);
    case 148:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_imp);
    case 146:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_lt);
    case 145:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_lteq);
    case 144:
        return push_instr(ctx, OP_me) ? S_OK : E_OUTOFMEMORY;
    case 143:
        return compile_member_expression(ctx, (member_expression_t*)expr, TRUE);
    case 142:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_mod);
    case 141:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_mul);
    case 140:
        return compile_unary_expression(ctx, (unary_expression_t*)expr, OP_neg);
    case 139:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_nequal);
    case 138:
        return push_instr_str(ctx, OP_new, ((string_expression_t*)expr)->value);
    case 137:
        return push_instr_int(ctx, OP_hres, DISP_E_PARAMNOTFOUND);
    case 136:
        return compile_unary_expression(ctx, (unary_expression_t*)expr, OP_not);
    case 135:
        return push_instr(ctx, OP_nothing) ? S_OK : E_OUTOFMEMORY;
    case 134:
        return push_instr(ctx, OP_null) ? S_OK : E_OUTOFMEMORY;
    case 133:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_or);
    case 132:
        return push_instr_str(ctx, OP_string, ((string_expression_t*)expr)->value);
    case 131:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_sub);
    case 129:
        return push_instr_int(ctx, OP_short, ((int_expression_t*)expr)->value);
    case 130:
        return push_instr_int(ctx, OP_long, ((int_expression_t*)expr)->value);
    case 128:
        return compile_binary_expression(ctx, (binary_expression_t*)expr, OP_xor);
    default:
        FIXME("Unimplemented expression type %d\n", expr->type);
        return E_NOTIMPL;
    }

    return S_OK;
}
