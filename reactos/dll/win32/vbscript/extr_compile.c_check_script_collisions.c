
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_6__ {int name; struct TYPE_6__* next; } ;
typedef TYPE_1__ function_t ;
struct TYPE_7__ {int name; struct TYPE_7__* next; } ;
typedef TYPE_2__ dynamic_var_t ;
struct TYPE_8__ {TYPE_4__* classes; TYPE_1__* funcs; TYPE_2__* global_vars; } ;
typedef TYPE_3__ compile_ctx_t ;
struct TYPE_9__ {int name; struct TYPE_9__* next; } ;
typedef TYPE_4__ class_desc_t ;
typedef int HRESULT ;


 int E_FAIL ;
 int FIXME (char*,int ) ;
 int S_OK ;
 int debugstr_w (int ) ;
 scalar_t__ lookup_script_identifier (int *,int ) ;

__attribute__((used)) static HRESULT check_script_collisions(compile_ctx_t *ctx, script_ctx_t *script)
{
    class_desc_t *class;
    dynamic_var_t *var;
    function_t *func;

    for(var = ctx->global_vars; var; var = var->next) {
        if(lookup_script_identifier(script, var->name)) {
            FIXME("%s: redefined\n", debugstr_w(var->name));
            return E_FAIL;
        }
    }

    for(func = ctx->funcs; func; func = func->next) {
        if(lookup_script_identifier(script, func->name)) {
            FIXME("%s: redefined\n", debugstr_w(func->name));
            return E_FAIL;
        }
    }

    for(class = ctx->classes; class; class = class->next) {
        if(lookup_script_identifier(script, class->name)) {
            FIXME("%s: redefined\n", debugstr_w(class->name));
            return E_FAIL;
        }
    }

    return S_OK;
}
