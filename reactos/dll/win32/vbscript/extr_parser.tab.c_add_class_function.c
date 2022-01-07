
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* hres; } ;
typedef TYPE_1__ parser_ctx_t ;
struct TYPE_9__ {scalar_t__ type; struct TYPE_9__* next; struct TYPE_9__* next_prop_func; int name; } ;
typedef TYPE_2__ function_decl_t ;
struct TYPE_10__ {TYPE_2__* funcs; int name; } ;
typedef TYPE_3__ class_decl_t ;


 void* E_FAIL ;
 int FIXME (char*,int ,int ) ;
 scalar_t__ FUNC_FUNCTION ;
 scalar_t__ FUNC_SUB ;
 int debugstr_w (int ) ;
 int strcmpiW (int ,int ) ;

__attribute__((used)) static class_decl_t *add_class_function(parser_ctx_t *ctx, class_decl_t *class_decl, function_decl_t *decl)
{
    function_decl_t *iter;

    for(iter = class_decl->funcs; iter; iter = iter->next) {
        if(!strcmpiW(iter->name, decl->name)) {
            if(decl->type == FUNC_SUB || decl->type == FUNC_FUNCTION) {
                FIXME("Redefinition of %s::%s\n", debugstr_w(class_decl->name), debugstr_w(decl->name));
                ctx->hres = E_FAIL;
                return ((void*)0);
            }

            while(1) {
                if(iter->type == decl->type) {
                    FIXME("Redefinition of %s::%s\n", debugstr_w(class_decl->name), debugstr_w(decl->name));
                    ctx->hres = E_FAIL;
                    return ((void*)0);
                }
                if(!iter->next_prop_func)
                    break;
                iter = iter->next_prop_func;
            }

            iter->next_prop_func = decl;
            return class_decl;
        }
    }

    decl->next = class_decl->funcs;
    class_decl->funcs = decl;
    return class_decl;
}
