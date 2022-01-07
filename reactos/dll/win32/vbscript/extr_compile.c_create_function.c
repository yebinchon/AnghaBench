
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int arg_cnt; TYPE_1__* args; int is_public; int type; int code_ctx; scalar_t__ array_cnt; scalar_t__ var_cnt; int * vars; void* name; } ;
typedef TYPE_2__ function_t ;
struct TYPE_16__ {int body; TYPE_5__* args; int is_public; int type; int name; } ;
typedef TYPE_3__ function_decl_t ;
struct TYPE_17__ {int code; } ;
typedef TYPE_4__ compile_ctx_t ;
typedef int arg_desc_t ;
struct TYPE_18__ {int by_ref; int name; struct TYPE_18__* next; } ;
typedef TYPE_5__ arg_decl_t ;
struct TYPE_14__ {int by_ref; void* name; } ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,int ) ;
 int S_OK ;
 int compile_func (TYPE_4__*,int ,TYPE_2__*) ;
 void* compiler_alloc (int ,int) ;
 void* compiler_alloc_string (int ,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ lookup_const_decls (TYPE_4__*,int ,int ) ;
 scalar_t__ lookup_dim_decls (TYPE_4__*,int ) ;
 scalar_t__ lookup_funcs_name (TYPE_4__*,int ) ;

__attribute__((used)) static HRESULT create_function(compile_ctx_t *ctx, function_decl_t *decl, function_t **ret)
{
    function_t *func;
    HRESULT hres;

    if(lookup_dim_decls(ctx, decl->name) || lookup_funcs_name(ctx, decl->name) || lookup_const_decls(ctx, decl->name, FALSE)) {
        FIXME("%s: redefinition\n", debugstr_w(decl->name));
        return E_FAIL;
    }

    func = compiler_alloc(ctx->code, sizeof(*func));
    if(!func)
        return E_OUTOFMEMORY;

    func->name = compiler_alloc_string(ctx->code, decl->name);
    if(!func->name)
        return E_OUTOFMEMORY;

    func->vars = ((void*)0);
    func->var_cnt = 0;
    func->array_cnt = 0;
    func->code_ctx = ctx->code;
    func->type = decl->type;
    func->is_public = decl->is_public;

    func->arg_cnt = 0;
    if(decl->args) {
        arg_decl_t *arg;
        unsigned i;

        for(arg = decl->args; arg; arg = arg->next)
            func->arg_cnt++;

        func->args = compiler_alloc(ctx->code, func->arg_cnt * sizeof(arg_desc_t));
        if(!func->args)
            return E_OUTOFMEMORY;

        for(i = 0, arg = decl->args; arg; arg = arg->next, i++) {
            func->args[i].name = compiler_alloc_string(ctx->code, arg->name);
            if(!func->args[i].name)
                return E_OUTOFMEMORY;
            func->args[i].by_ref = arg->by_ref;
        }
    }else {
        func->args = ((void*)0);
    }

    hres = compile_func(ctx, decl->body, func);
    if(FAILED(hres))
        return hres;

    *ret = func;
    return S_OK;
}
