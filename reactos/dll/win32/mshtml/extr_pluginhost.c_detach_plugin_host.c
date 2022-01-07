
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * doc; int entry; TYPE_2__* element; TYPE_1__* sink; int * plugin_unk; scalar_t__ ip_object; scalar_t__ ui_active; } ;
struct TYPE_8__ {int * plugin_host; } ;
struct TYPE_7__ {int IDispatch_iface; int * host; int cookie; int iid; } ;
typedef TYPE_3__ PluginHost ;
typedef int IOleObject ;
typedef int IConnectionPointContainer ;
typedef int IConnectionPoint ;
typedef int HRESULT ;


 int IConnectionPointContainer_FindConnectionPoint (int *,int *,int **) ;
 int IConnectionPointContainer_Release (int *) ;
 int IConnectionPoint_Release (int *) ;
 int IConnectionPoint_Unadvise (int *,int ) ;
 int IDispatch_Release (int *) ;
 int IID_IConnectionPointContainer ;
 int IID_IOleObject ;
 int IOleInPlaceObject_InPlaceDeactivate (scalar_t__) ;
 int IOleInPlaceObject_UIDeactivate (scalar_t__) ;
 int IOleObject_Close (int *,int ) ;
 int IOleObject_Release (int *) ;
 int IOleObject_SetClientSite (int *,int *) ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int OLECLOSE_NOSAVE ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,TYPE_3__*) ;
 int assert (int ) ;
 int list_init (int *) ;
 int list_remove (int *) ;
 int release_plugin_ifaces (TYPE_3__*) ;

void detach_plugin_host(PluginHost *host)
{
    HRESULT hres;

    TRACE("%p\n", host);

    if(!host->doc)
        return;

    if(host->ip_object) {
        if(host->ui_active)
            IOleInPlaceObject_UIDeactivate(host->ip_object);
        IOleInPlaceObject_InPlaceDeactivate(host->ip_object);
    }

    if(host->plugin_unk) {
        IOleObject *ole_obj;

        hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IOleObject, (void**)&ole_obj);
        if(SUCCEEDED(hres)) {
            if(!host->ip_object)
                IOleObject_Close(ole_obj, OLECLOSE_NOSAVE);
            IOleObject_SetClientSite(ole_obj, ((void*)0));
            IOleObject_Release(ole_obj);
        }
    }

    if(host->sink) {
        IConnectionPointContainer *cp_container;
        IConnectionPoint *cp;

        assert(host->plugin_unk != ((void*)0));

        hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IConnectionPointContainer, (void**)&cp_container);
        if(SUCCEEDED(hres)) {
            hres = IConnectionPointContainer_FindConnectionPoint(cp_container, &host->sink->iid, &cp);
            IConnectionPointContainer_Release(cp_container);
            if(SUCCEEDED(hres)) {
                IConnectionPoint_Unadvise(cp, host->sink->cookie);
                IConnectionPoint_Release(cp);
            }
        }

        host->sink->host = ((void*)0);
        IDispatch_Release(&host->sink->IDispatch_iface);
        host->sink = ((void*)0);
    }

    release_plugin_ifaces(host);

    if(host->element) {
        host->element->plugin_host = ((void*)0);
        host->element = ((void*)0);
    }

    list_remove(&host->entry);
    list_init(&host->entry);
    host->doc = ((void*)0);
}
