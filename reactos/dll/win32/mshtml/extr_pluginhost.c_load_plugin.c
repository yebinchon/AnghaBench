
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int plugin_unk; } ;
typedef TYPE_1__ PluginHost ;
typedef int IPersistPropertyBag2 ;
typedef int IPersistPropertyBag ;
typedef int HRESULT ;


 int FIXME (char*) ;
 int IID_IPersistPropertyBag ;
 int IID_IPersistPropertyBag2 ;
 int IPersistPropertyBag2_Release (int *) ;
 int IPersistPropertyBag_Release (int *) ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ SUCCEEDED (int ) ;
 int load_prop_bag (TYPE_1__*,int *) ;

__attribute__((used)) static void load_plugin(PluginHost *host)
{
    IPersistPropertyBag2 *persist_prop_bag2;
    IPersistPropertyBag *persist_prop_bag;
    HRESULT hres;

    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IPersistPropertyBag2, (void**)&persist_prop_bag2);
    if(SUCCEEDED(hres)) {
        FIXME("Use IPersistPropertyBag2 iface\n");
        IPersistPropertyBag2_Release(persist_prop_bag2);
        return;
    }

    hres = IUnknown_QueryInterface(host->plugin_unk, &IID_IPersistPropertyBag, (void**)&persist_prop_bag);
    if(SUCCEEDED(hres)) {
        load_prop_bag(host, persist_prop_bag);
        IPersistPropertyBag_Release(persist_prop_bag);
        return;
    }

    FIXME("No IPersistPropertyBag iface\n");
}
