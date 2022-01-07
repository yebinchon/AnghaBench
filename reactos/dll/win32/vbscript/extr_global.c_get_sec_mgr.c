
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * secmgr; int site; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int IServiceProvider ;
typedef int IInternetHostSecurityManager ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IActiveScriptSite_QueryInterface (int ,int *,void**) ;
 int IID_IInternetHostSecurityManager ;
 int IID_IServiceProvider ;
 int IServiceProvider_QueryService (int *,int *,int *,void**) ;
 int IServiceProvider_Release (int *) ;
 int SID_SInternetHostSecurityManager ;

__attribute__((used)) static IInternetHostSecurityManager *get_sec_mgr(script_ctx_t *ctx)
{
    IInternetHostSecurityManager *secmgr;
    IServiceProvider *sp;
    HRESULT hres;

    if(!ctx->site)
        return ((void*)0);

    if(ctx->secmgr)
        return ctx->secmgr;

    hres = IActiveScriptSite_QueryInterface(ctx->site, &IID_IServiceProvider, (void**)&sp);
    if(FAILED(hres))
        return ((void*)0);

    hres = IServiceProvider_QueryService(sp, &SID_SInternetHostSecurityManager, &IID_IInternetHostSecurityManager,
            (void**)&secmgr);
    IServiceProvider_Release(sp);
    if(FAILED(hres))
        return ((void*)0);

    return ctx->secmgr = secmgr;
}
