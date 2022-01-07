
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* desc; } ;
typedef TYPE_2__ vbdisp_t ;
struct TYPE_8__ {int site; } ;
typedef TYPE_3__ script_ctx_t ;
typedef int VARIANT ;
struct TYPE_6__ {int value_func; TYPE_3__* ctx; } ;
typedef int HRESULT ;


 int IActiveScriptSite_OnEnterScript (int ) ;
 int IActiveScriptSite_OnLeaveScript (int ) ;
 int TRACE (char*) ;
 int exec_script (TYPE_3__*,int ,int *,int *,int *) ;

__attribute__((used)) static HRESULT Procedure_invoke(vbdisp_t *This, VARIANT *args, unsigned args_cnt, VARIANT *res)
{
    script_ctx_t *ctx = This->desc->ctx;
    HRESULT hres;

    TRACE("\n");

    IActiveScriptSite_OnEnterScript(ctx->site);
    hres = exec_script(ctx, This->desc->value_func, ((void*)0), ((void*)0), ((void*)0));
    IActiveScriptSite_OnLeaveScript(ctx->site);

    return hres;
}
