
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIFactory ;
typedef int nsIComponentRegistrar ;
typedef int nsIComponentManager ;


 int ERR (char*,int ) ;
 int IID_nsIFactory ;
 int IID_nsIIOService ;
 int IID_nsINetUtil ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_IOSERVICE_CID ;
 int NS_IOSERVICE_CLASSNAME ;
 int NS_IOSERVICE_CONTRACTID ;
 int WARN (char*,int ) ;
 int net_util ;
 int nsIComponentManager_GetClassObject (int *,int *,int *,void**) ;
 int nsIComponentRegistrar_RegisterFactory (int *,int *,int ,int ,int *) ;
 int nsIComponentRegistrar_UnregisterFactory (int *,int *,int *) ;
 int nsIFactory_CreateInstance (int *,int *,int *,void**) ;
 int nsIFactory_Release (int *) ;
 int nsIIOService_QueryInterface (int ,int *,void**) ;
 int nsIIOService_Release (int ) ;
 int nsIOServiceFactory ;
 int nsio ;

void init_nsio(nsIComponentManager *component_manager, nsIComponentRegistrar *registrar)
{
    nsIFactory *old_factory = ((void*)0);
    nsresult nsres;

    nsres = nsIComponentManager_GetClassObject(component_manager, &NS_IOSERVICE_CID,
                                               &IID_nsIFactory, (void**)&old_factory);
    if(NS_FAILED(nsres)) {
        ERR("Could not get factory: %08x\n", nsres);
        return;
    }

    nsres = nsIFactory_CreateInstance(old_factory, ((void*)0), &IID_nsIIOService, (void**)&nsio);
    if(NS_FAILED(nsres)) {
        ERR("Couldn not create nsIOService instance %08x\n", nsres);
        nsIFactory_Release(old_factory);
        return;
    }

    nsres = nsIIOService_QueryInterface(nsio, &IID_nsINetUtil, (void**)&net_util);
    if(NS_FAILED(nsres)) {
        WARN("Could not get nsINetUtil interface: %08x\n", nsres);
        nsIIOService_Release(nsio);
        return;
    }

    nsres = nsIComponentRegistrar_UnregisterFactory(registrar, &NS_IOSERVICE_CID, old_factory);
    nsIFactory_Release(old_factory);
    if(NS_FAILED(nsres))
        ERR("UnregisterFactory failed: %08x\n", nsres);

    nsres = nsIComponentRegistrar_RegisterFactory(registrar, &NS_IOSERVICE_CID,
            NS_IOSERVICE_CLASSNAME, NS_IOSERVICE_CONTRACTID, &nsIOServiceFactory);
    if(NS_FAILED(nsres))
        ERR("RegisterFactory failed: %08x\n", nsres);
}
