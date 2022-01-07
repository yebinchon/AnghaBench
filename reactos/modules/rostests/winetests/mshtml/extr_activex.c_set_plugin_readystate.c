
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int READYSTATE ;
typedef int IPropertyNotifySink ;
typedef scalar_t__ HRESULT ;


 int DISPID_READYSTATE ;
 int IID_IPropertyNotifySink ;
 scalar_t__ IOleClientSite_QueryInterface (int ,int *,void**) ;
 scalar_t__ IPropertyNotifySink_OnChanged (int *,int ) ;
 int IPropertyNotifySink_Release (int *) ;
 scalar_t__ S_OK ;
 int client_site ;
 int ok (int,char*,scalar_t__) ;
 int plugin_readystate ;

__attribute__((used)) static void set_plugin_readystate(READYSTATE state)
{
    IPropertyNotifySink *prop_notif;
    HRESULT hres;

    plugin_readystate = state;

    hres = IOleClientSite_QueryInterface(client_site, &IID_IPropertyNotifySink, (void**)&prop_notif);
    ok(hres == S_OK, "Could not get IPropertyNotifySink iface: %08x\n", hres);

    hres = IPropertyNotifySink_OnChanged(prop_notif, DISPID_READYSTATE);
    ok(hres == S_OK, "OnChanged(DISPID_READYSTATE) failed: %08x\n", hres);

    IPropertyNotifySink_Release(prop_notif);
}
