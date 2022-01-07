
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int IUnknown ;
typedef int IObjectWithSite ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IID_IObjectWithSite ;
 int IObjectWithSite_Release (int *) ;
 int IObjectWithSite_SetSite (int *,int *) ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int * create_ax_site (int *) ;

__attribute__((used)) static HRESULT set_object_site(script_ctx_t *ctx, IUnknown *obj)
{
    IObjectWithSite *obj_site;
    IUnknown *ax_site;
    HRESULT hres;

    hres = IUnknown_QueryInterface(obj, &IID_IObjectWithSite, (void**)&obj_site);
    if(FAILED(hres))
        return S_OK;

    ax_site = create_ax_site(ctx);
    if(ax_site) {
        hres = IObjectWithSite_SetSite(obj_site, ax_site);
        IUnknown_Release(ax_site);
    }
    else
        hres = E_OUTOFMEMORY;
    IObjectWithSite_Release(obj_site);
    return hres;
}
