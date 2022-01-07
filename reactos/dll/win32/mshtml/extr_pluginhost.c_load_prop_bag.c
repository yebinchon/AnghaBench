
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* element; } ;
struct TYPE_6__ {int nselem; } ;
struct TYPE_7__ {TYPE_1__ element; } ;
typedef TYPE_3__ PluginHost ;
typedef int IPropertyBag ;
typedef int IPersistPropertyBag ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IPersistPropertyBag_InitNew (int *) ;
 int IPersistPropertyBag_Load (int *,int *,int *) ;
 int IPropertyBag_Release (int *) ;
 int WARN (char*,int ) ;
 int check_load_safety (TYPE_3__*) ;
 int create_param_prop_bag (int ,int **) ;

__attribute__((used)) static void load_prop_bag(PluginHost *host, IPersistPropertyBag *persist_prop_bag)
{
    IPropertyBag *prop_bag;
    HRESULT hres;

    hres = create_param_prop_bag(host->element->element.nselem, &prop_bag);
    if(FAILED(hres))
        return;

    if(prop_bag && !check_load_safety(host)) {
        IPropertyBag_Release(prop_bag);
        prop_bag = ((void*)0);
    }

    if(prop_bag) {
        hres = IPersistPropertyBag_Load(persist_prop_bag, prop_bag, ((void*)0));
        IPropertyBag_Release(prop_bag);
        if(FAILED(hres))
            WARN("Load failed: %08x\n", hres);
    }else {
        hres = IPersistPropertyBag_InitNew(persist_prop_bag);
        if(FAILED(hres))
            WARN("InitNew failed: %08x\n", hres);
    }
}
