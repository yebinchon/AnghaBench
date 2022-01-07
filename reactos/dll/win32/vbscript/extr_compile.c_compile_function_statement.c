
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* func_decl; } ;
typedef TYPE_3__ function_statement_t ;
struct TYPE_10__ {TYPE_2__* func_decls; TYPE_1__* code; int * func; } ;
typedef TYPE_4__ compile_ctx_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {int main_code; } ;
typedef int HRESULT ;


 int E_FAIL ;
 int FIXME (char*) ;
 int S_OK ;

__attribute__((used)) static HRESULT compile_function_statement(compile_ctx_t *ctx, function_statement_t *stat)
{
    if(ctx->func != &ctx->code->main_code) {
        FIXME("Function is not in the global code\n");
        return E_FAIL;
    }

    stat->func_decl->next = ctx->func_decls;
    ctx->func_decls = stat->func_decl;
    return S_OK;
}
