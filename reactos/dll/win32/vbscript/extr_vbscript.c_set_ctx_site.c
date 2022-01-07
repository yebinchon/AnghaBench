
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int site; TYPE_3__* ctx; int lcid; } ;
typedef TYPE_1__ VBScript ;
struct TYPE_6__ {int site; int lcid; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IActiveScriptSite_AddRef (int ) ;
 int SCRIPTSTATE_INITIALIZED ;
 int S_OK ;
 int change_state (TYPE_1__*,int ) ;
 int init_global (TYPE_3__*) ;

__attribute__((used)) static HRESULT set_ctx_site(VBScript *This)
{
    HRESULT hres;

    This->ctx->lcid = This->lcid;

    hres = init_global(This->ctx);
    if(FAILED(hres))
        return hres;

    IActiveScriptSite_AddRef(This->site);
    This->ctx->site = This->site;

    change_state(This, SCRIPTSTATE_INITIALIZED);
    return S_OK;
}
