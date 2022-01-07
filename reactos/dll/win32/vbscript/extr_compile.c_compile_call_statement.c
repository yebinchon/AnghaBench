
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* subexpr; } ;
typedef TYPE_3__ unary_expression_t ;
struct TYPE_13__ {TYPE_1__* args; } ;
typedef TYPE_4__ member_expression_t ;
typedef int compile_ctx_t ;
struct TYPE_14__ {TYPE_4__* expr; int is_strict; } ;
typedef TYPE_5__ call_statement_t ;
struct TYPE_15__ {int right; TYPE_2__* left; } ;
typedef TYPE_6__ binary_expression_t ;
struct TYPE_11__ {scalar_t__ type; } ;
struct TYPE_10__ {scalar_t__ type; int next; } ;
typedef int HRESULT ;


 scalar_t__ EXPR_BRACKETS ;
 scalar_t__ EXPR_EQUAL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int S_OK ;
 int WARN (char*) ;
 int compile_assignment (int *,TYPE_4__*,int ,int ) ;
 int compile_member_expression (int *,TYPE_4__*,int ) ;
 int emit_catch (int *,int ) ;

__attribute__((used)) static HRESULT compile_call_statement(compile_ctx_t *ctx, call_statement_t *stat)
{
    HRESULT hres;



    if(!stat->is_strict && stat->expr->args && !stat->expr->args->next && stat->expr->args->type == EXPR_EQUAL) {
        binary_expression_t *eqexpr = (binary_expression_t*)stat->expr->args;

        if(eqexpr->left->type == EXPR_BRACKETS) {
            member_expression_t new_member = *stat->expr;

            WARN("converting call expr to assign expr\n");

            new_member.args = ((unary_expression_t*)eqexpr->left)->subexpr;
            return compile_assignment(ctx, &new_member, eqexpr->right, FALSE);
        }
    }

    hres = compile_member_expression(ctx, stat->expr, FALSE);
    if(FAILED(hres))
        return hres;

    if(!emit_catch(ctx, 0))
        return E_OUTOFMEMORY;

    return S_OK;
}
