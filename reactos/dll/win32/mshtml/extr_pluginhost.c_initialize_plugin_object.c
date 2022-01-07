
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int control ;
typedef int container ;
struct TYPE_11__ {int plugin_unk; int * disp; int IAdviseSinkEx_iface; int IOleClientSite_iface; int IPropertyNotifySink_iface; } ;
struct TYPE_10__ {int member_0; int dwAmbientFlags; int * pPropertyNotifySink; int * pAdviseSink; int * pClientSite; } ;
struct TYPE_9__ {int member_0; } ;
typedef TYPE_1__ QACONTROL ;
typedef TYPE_2__ QACONTAINER ;
typedef TYPE_3__ PluginHost ;
typedef int IViewObjectEx ;
typedef int IQuickActivate ;
typedef int IOleObject ;
typedef int IOleCommandTarget ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int IClientSecurity ;
typedef int IAdviseSink ;
typedef int HRESULT ;
typedef int DWORD ;


 int DVASPECT_CONTENT ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IClientSecurity_Release (int *) ;
 int IID_IClientSecurity ;
 int IID_IDispatch ;
 int IID_IDispatchEx ;
 int IID_IOleCommandTarget ;
 int IID_IOleObject ;
 int IID_IQuickActivate ;
 int IID_IViewObjectEx ;
 int IOleCommandTarget_Release (int *) ;
 int IOleObject_GetMiscStatus (int *,int ,int *) ;
 int IOleObject_Release (int *) ;
 int IOleObject_SetClientSite (int *,int *) ;
 int IQuickActivate_QuickActivate (int *,TYPE_2__*,TYPE_1__*) ;
 int IQuickActivate_Release (int *) ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 int IViewObjectEx_GetViewStatus (int *,int *) ;
 int IViewObjectEx_Release (int *) ;
 int IViewObjectEx_SetAdvise (int *,int ,int ,int *) ;
 int QACONTAINER_MESSAGEREFLECT ;
 int QACONTAINER_SUPPORTSMNEMONICS ;
 int QACONTAINER_USERMODE ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,...) ;
 int WARN (char*,int ) ;
 int load_plugin (TYPE_3__*) ;
 int update_readystate (TYPE_3__*) ;

__attribute__((used)) static void initialize_plugin_object(PluginHost *host)
{
    IClientSecurity *client_security;
    IQuickActivate *quick_activate;
    IOleObject *ole_obj = ((void*)0);
    IOleCommandTarget *cmdtrg;
    IViewObjectEx *view_obj;
    IDispatchEx *dispex;
    IDispatch *disp;
    HRESULT hres;





    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IClientSecurity, (void**)&client_security);
    if(SUCCEEDED(hres)) {
        FIXME("Handle IClientSecurity\n");
        IClientSecurity_Release(client_security);
        return;
    }

    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IQuickActivate, (void**)&quick_activate);
    if(SUCCEEDED(hres)) {
        QACONTAINER container = {sizeof(container)};
        QACONTROL control = {sizeof(control)};

        TRACE("Using IQuickActivate\n");

        container.pClientSite = &host->IOleClientSite_iface;
        container.dwAmbientFlags = QACONTAINER_SUPPORTSMNEMONICS|QACONTAINER_MESSAGEREFLECT|QACONTAINER_USERMODE;
        container.pAdviseSink = &host->IAdviseSinkEx_iface;
        container.pPropertyNotifySink = &host->IPropertyNotifySink_iface;

        hres = IQuickActivate_QuickActivate(quick_activate, &container, &control);
        IQuickActivate_Release(quick_activate);
        if(FAILED(hres))
            FIXME("QuickActivate failed: %08x\n", hres);
    }else {
        DWORD status = 0;

        hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IOleObject, (void**)&ole_obj);
        if(SUCCEEDED(hres)) {
            hres = IOleObject_GetMiscStatus(ole_obj, DVASPECT_CONTENT, &status);
            TRACE("GetMiscStatus returned %08x %x\n", hres, status);

            hres = IOleObject_SetClientSite(ole_obj, &host->IOleClientSite_iface);
            IOleObject_Release(ole_obj);
            if(FAILED(hres)) {
                FIXME("SetClientSite failed: %08x\n", hres);
                return;
            }
        }else {
            TRACE("Plugin does not support IOleObject\n");
        }
    }

    load_plugin(host);

    if(ole_obj) {
        hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IViewObjectEx, (void**)&view_obj);
        if(SUCCEEDED(hres)) {
            DWORD view_status = 0;

            hres = IViewObjectEx_SetAdvise(view_obj, DVASPECT_CONTENT, 0, (IAdviseSink*)&host->IAdviseSinkEx_iface);
            if(FAILED(hres))
                WARN("SetAdvise failed: %08x\n", hres);

            hres = IViewObjectEx_GetViewStatus(view_obj, &view_status);
            IViewObjectEx_Release(view_obj);
            TRACE("GetViewStatus returned %08x %x\n", hres, view_status);
        }
    }

    update_readystate(host);



    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IDispatchEx, (void**)&dispex);
    if(SUCCEEDED(hres)) {
        FIXME("Use IDispatchEx\n");
        host->disp = (IDispatch*)dispex;
    }else {
        hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IDispatch, (void**)&disp);
        if(SUCCEEDED(hres))
            host->disp = disp;
        else
            TRACE("no IDispatch iface\n");
    }

    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IOleCommandTarget, (void**)&cmdtrg);
    if(SUCCEEDED(hres)) {
        FIXME("Use IOleCommandTarget\n");
        IOleCommandTarget_Release(cmdtrg);
    }
}
