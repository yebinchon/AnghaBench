
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t vbdisp_invoke_type_t ;
struct TYPE_9__ {int * entries; int is_public; int name; } ;
typedef TYPE_1__ vbdisp_funcprop_desc_t ;
struct TYPE_10__ {int type; scalar_t__ is_public; struct TYPE_10__* next_prop_func; int name; } ;
typedef TYPE_2__ function_decl_t ;
struct TYPE_11__ {int code; } ;
typedef TYPE_3__ compile_ctx_t ;
typedef int HRESULT ;


 int DEFAULT_UNREACHABLE ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;






 int S_OK ;
 int TRUE ;
 size_t VBDISP_CALLGET ;
 size_t VBDISP_LET ;
 size_t VBDISP_SET ;
 int assert (int) ;
 int compiler_alloc_string (int ,int ) ;
 int create_function (TYPE_3__*,TYPE_2__*,int *) ;

__attribute__((used)) static HRESULT create_class_funcprop(compile_ctx_t *ctx, function_decl_t *func_decl, vbdisp_funcprop_desc_t *desc)
{
    vbdisp_invoke_type_t invoke_type;
    function_decl_t *funcprop_decl;
    HRESULT hres;

    desc->name = compiler_alloc_string(ctx->code, func_decl->name);
    if(!desc->name)
        return E_OUTOFMEMORY;

    for(funcprop_decl = func_decl; funcprop_decl; funcprop_decl = funcprop_decl->next_prop_func) {
        switch(funcprop_decl->type) {
        case 132:
        case 128:
        case 131:
        case 133:
            invoke_type = VBDISP_CALLGET;
            break;
        case 130:
            invoke_type = VBDISP_LET;
            break;
        case 129:
            invoke_type = VBDISP_SET;
            break;
        DEFAULT_UNREACHABLE;
        }

        assert(!desc->entries[invoke_type]);

        if(funcprop_decl->is_public)
            desc->is_public = TRUE;

        hres = create_function(ctx, funcprop_decl, desc->entries+invoke_type);
        if(FAILED(hres))
            return hres;
    }

    return S_OK;
}
