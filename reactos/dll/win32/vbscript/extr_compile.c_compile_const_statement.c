
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* decls; } ;
typedef TYPE_2__ const_statement_t ;
struct TYPE_15__ {struct TYPE_15__* next; int name; int value_expr; } ;
typedef TYPE_3__ const_decl_t ;
struct TYPE_16__ {TYPE_3__* const_decls; TYPE_1__* func; } ;
typedef TYPE_4__ compile_ctx_t ;
struct TYPE_13__ {scalar_t__ type; } ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,int ) ;
 scalar_t__ FUNC_GLOBAL ;
 int OP_const ;
 int S_OK ;
 int compile_expression (TYPE_4__*,int ) ;
 int debugstr_w (int ) ;
 int emit_catch (TYPE_4__*,int ) ;
 scalar_t__ lookup_args_name (TYPE_4__*,int ) ;
 scalar_t__ lookup_const_decls (TYPE_4__*,int ,int ) ;
 scalar_t__ lookup_dim_decls (TYPE_4__*,int ) ;
 int push_instr_bstr (TYPE_4__*,int ,int ) ;

__attribute__((used)) static HRESULT compile_const_statement(compile_ctx_t *ctx, const_statement_t *stat)
{
    const_decl_t *decl, *next_decl = stat->decls;

    do {
        decl = next_decl;

        if(lookup_const_decls(ctx, decl->name, FALSE) || lookup_args_name(ctx, decl->name)
                || lookup_dim_decls(ctx, decl->name)) {
            FIXME("%s redefined\n", debugstr_w(decl->name));
            return E_FAIL;
        }

        if(ctx->func->type == FUNC_GLOBAL) {
            HRESULT hres;

            hres = compile_expression(ctx, decl->value_expr);
            if(FAILED(hres))
                return hres;

            hres = push_instr_bstr(ctx, OP_const, decl->name);
            if(FAILED(hres))
                return hres;

            if(!emit_catch(ctx, 0))
                return E_OUTOFMEMORY;
        }

        next_decl = decl->next;
        decl->next = ctx->const_decls;
        ctx->const_decls = decl;
    } while(next_decl);

    return S_OK;
}
