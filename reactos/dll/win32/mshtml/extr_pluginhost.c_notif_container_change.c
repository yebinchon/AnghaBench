
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int plugin_unk; } ;
struct TYPE_4__ {TYPE_2__* plugin_host; } ;
typedef int IOleControl ;
typedef TYPE_1__ HTMLPluginContainer ;
typedef int HRESULT ;
typedef int DISPID ;


 int IID_IOleControl ;
 int IOleControl_OnAmbientPropertyChange (int *,int ) ;
 int IOleControl_Release (int *) ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ SUCCEEDED (int ) ;
 int notif_enabled (TYPE_2__*) ;

void notif_container_change(HTMLPluginContainer *plugin_container, DISPID dispid)
{
    IOleControl *ole_control;
    HRESULT hres;

    if(!plugin_container->plugin_host || !plugin_container->plugin_host->plugin_unk)
        return;

    notif_enabled(plugin_container->plugin_host);

    hres = IUnknown_QueryInterface(plugin_container->plugin_host->plugin_unk, &IID_IOleControl, (void**)&ole_control);
    if(SUCCEEDED(hres)) {
        IOleControl_OnAmbientPropertyChange(ole_control, dispid);
        IOleControl_Release(ole_control);
    }
}
