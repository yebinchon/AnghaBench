
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int main_code; int pending_exec; } ;
typedef TYPE_1__ vbscode_t ;
struct TYPE_7__ {int site; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int HRESULT ;


 int FALSE ;
 int IActiveScriptSite_OnEnterScript (int ) ;
 int IActiveScriptSite_OnLeaveScript (int ) ;
 int exec_script (TYPE_2__*,int *,int *,int *,int *) ;

__attribute__((used)) static HRESULT exec_global_code(script_ctx_t *ctx, vbscode_t *code)
{
    HRESULT hres;

    code->pending_exec = FALSE;

    IActiveScriptSite_OnEnterScript(ctx->site);
    hres = exec_script(ctx, &code->main_code, ((void*)0), ((void*)0), ((void*)0));
    IActiveScriptSite_OnLeaveScript(ctx->site);

    return hres;
}
