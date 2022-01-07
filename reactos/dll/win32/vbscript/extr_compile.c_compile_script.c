
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_25__ {int entry; int main_code; } ;
typedef TYPE_1__ vbscode_t ;
struct TYPE_26__ {int code_list; TYPE_7__* classes; TYPE_3__* global_funcs; TYPE_5__* global_vars; } ;
typedef TYPE_2__ script_ctx_t ;
struct TYPE_27__ {struct TYPE_27__* next; } ;
typedef TYPE_3__ function_t ;
struct TYPE_28__ {struct TYPE_28__* next; } ;
typedef TYPE_4__ function_decl_t ;
struct TYPE_29__ {struct TYPE_29__* next; } ;
typedef TYPE_5__ dynamic_var_t ;
struct TYPE_24__ {TYPE_8__* class_decls; int stats; } ;
struct TYPE_30__ {TYPE_1__* code; TYPE_7__* classes; TYPE_3__* funcs; TYPE_5__* global_vars; TYPE_10__ parser; TYPE_4__* func_decls; int * const_decls; int * global_consts; scalar_t__ labels_size; scalar_t__ labels_cnt; int * stat_ctx; int * labels; } ;
typedef TYPE_6__ compile_ctx_t ;
struct TYPE_31__ {struct TYPE_31__* next; TYPE_2__* ctx; } ;
typedef TYPE_7__ class_desc_t ;
struct TYPE_32__ {struct TYPE_32__* next; } ;
typedef TYPE_8__ class_decl_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 scalar_t__ TRACE_ON (int ) ;
 TYPE_1__* alloc_vbscode (TYPE_6__*,int const*) ;
 int check_script_collisions (TYPE_6__*,TYPE_2__*) ;
 int compile_class (TYPE_6__*,TYPE_8__*) ;
 int compile_func (TYPE_6__*,int ,int *) ;
 int create_function (TYPE_6__*,TYPE_4__*,TYPE_3__**) ;
 int dump_code (TYPE_6__*) ;
 int list_add_tail (int *,int *) ;
 int parse_script (TYPE_10__*,int const*,int const*) ;
 int release_compiler (TYPE_6__*) ;
 int vbscript_disas ;

HRESULT compile_script(script_ctx_t *script, const WCHAR *src, const WCHAR *delimiter, vbscode_t **ret)
{
    function_t *new_func;
    function_decl_t *func_decl;
    class_decl_t *class_decl;
    compile_ctx_t ctx;
    vbscode_t *code;
    HRESULT hres;

    hres = parse_script(&ctx.parser, src, delimiter);
    if(FAILED(hres))
        return hres;

    code = ctx.code = alloc_vbscode(&ctx, src);
    if(!ctx.code)
        return E_OUTOFMEMORY;

    ctx.funcs = ((void*)0);
    ctx.func_decls = ((void*)0);
    ctx.global_vars = ((void*)0);
    ctx.classes = ((void*)0);
    ctx.labels = ((void*)0);
    ctx.global_consts = ((void*)0);
    ctx.stat_ctx = ((void*)0);
    ctx.labels_cnt = ctx.labels_size = 0;

    hres = compile_func(&ctx, ctx.parser.stats, &ctx.code->main_code);
    if(FAILED(hres)) {
        release_compiler(&ctx);
        return hres;
    }

    ctx.global_consts = ctx.const_decls;

    for(func_decl = ctx.func_decls; func_decl; func_decl = func_decl->next) {
        hres = create_function(&ctx, func_decl, &new_func);
        if(FAILED(hres)) {
            release_compiler(&ctx);
            return hres;
        }

        new_func->next = ctx.funcs;
        ctx.funcs = new_func;
    }

    for(class_decl = ctx.parser.class_decls; class_decl; class_decl = class_decl->next) {
        hres = compile_class(&ctx, class_decl);
        if(FAILED(hres)) {
            release_compiler(&ctx);
            return hres;
        }
    }

    hres = check_script_collisions(&ctx, script);
    if(FAILED(hres)) {
        release_compiler(&ctx);
        return hres;
    }

    if(ctx.global_vars) {
        dynamic_var_t *var;

        for(var = ctx.global_vars; var->next; var = var->next);

        var->next = script->global_vars;
        script->global_vars = ctx.global_vars;
    }

    if(ctx.funcs) {
        for(new_func = ctx.funcs; new_func->next; new_func = new_func->next);

        new_func->next = script->global_funcs;
        script->global_funcs = ctx.funcs;
    }

    if(ctx.classes) {
        class_desc_t *class = ctx.classes;

        while(1) {
            class->ctx = script;
            if(!class->next)
                break;
            class = class->next;
        }

        class->next = script->classes;
        script->classes = ctx.classes;
    }

    if(TRACE_ON(vbscript_disas))
        dump_code(&ctx);

    ctx.code = ((void*)0);
    release_compiler(&ctx);

    list_add_tail(&script->code_list, &code->entry);
    *ret = code;
    return S_OK;
}
