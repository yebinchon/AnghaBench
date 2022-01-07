
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIServiceManager ;
typedef int nsIComponentRegistrar ;
struct TYPE_4__ {int nsIFactory_iface; } ;
struct TYPE_3__ {int nsIFactory_iface; } ;


 int ERR (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_PROMPTSERVICE_CID ;
 int NS_PROMPTSERVICE_CONTRACTID ;
 int NS_TOOLTIPTEXTPROVIDER_CID ;
 char* NS_TOOLTIPTEXTPROVIDER_CLASSNAME ;
 int NS_TOOLTIPTEXTPROVIDER_CONTRACTID ;
 int nsIComponentRegistrar_RegisterFactory (int *,int *,char*,int ,int *) ;
 TYPE_2__ nsPromptServiceFactory ;
 TYPE_1__ nsTooltipTextFactory ;

void register_nsservice(nsIComponentRegistrar *registrar, nsIServiceManager *service_manager)
{
    nsresult nsres;

    nsres = nsIComponentRegistrar_RegisterFactory(registrar, &NS_PROMPTSERVICE_CID,
            "Prompt Service", NS_PROMPTSERVICE_CONTRACTID, &nsPromptServiceFactory.nsIFactory_iface);
    if(NS_FAILED(nsres))
        ERR("RegisterFactory failed: %08x\n", nsres);

    nsres = nsIComponentRegistrar_RegisterFactory(registrar, &NS_TOOLTIPTEXTPROVIDER_CID,
            NS_TOOLTIPTEXTPROVIDER_CLASSNAME, NS_TOOLTIPTEXTPROVIDER_CONTRACTID,
            &nsTooltipTextFactory.nsIFactory_iface);
    if(NS_FAILED(nsres))
        ERR("RegisterFactory failed: %08x\n", nsres);
}
