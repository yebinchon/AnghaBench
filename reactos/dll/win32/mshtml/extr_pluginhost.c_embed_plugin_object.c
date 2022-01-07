
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ip_object; int hwnd; int IOleClientSite_iface; int plugin_unk; } ;
typedef int RECT ;
typedef TYPE_1__ PluginHost ;
typedef int IOleObject ;
typedef int HWND ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IID_IOleObject ;
 int IOleInPlaceObject_GetWindow (scalar_t__,int *) ;
 int IOleObject_DoVerb (int *,int ,int *,int *,int ,int ,int *) ;
 int IOleObject_Release (int *) ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 int OLEIVERB_INPLACEACTIVATE ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int get_pos_rect (TYPE_1__*,int *) ;

__attribute__((used)) static void embed_plugin_object(PluginHost *host)
{
    IOleObject *ole_obj;
    RECT rect;
    HRESULT hres;

    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IOleObject, (void**)&ole_obj);
    if(FAILED(hres)) {
        FIXME("Plugin does not support IOleObject\n");
        return;
    }

    get_pos_rect(host, &rect);
    hres = IOleObject_DoVerb(ole_obj, OLEIVERB_INPLACEACTIVATE, ((void*)0), &host->IOleClientSite_iface, 0, host->hwnd, &rect);
    IOleObject_Release(ole_obj);
    if(FAILED(hres))
        WARN("DoVerb failed: %08x\n", hres);

    if(host->ip_object) {
        HWND hwnd;

        hres = IOleInPlaceObject_GetWindow(host->ip_object, &hwnd);
        if(SUCCEEDED(hres))
            TRACE("hwnd %p\n", hwnd);
    }
}
