
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIFactory ;
typedef int nsIComponentManager ;


 int ERR (char*,int ) ;
 int IID_nsIContentUtils ;
 int IID_nsIFactory ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_ICONTENTUTILS_CID ;
 int * content_utils ;
 int nsIComponentManager_GetClassObject (int *,int *,int *,void**) ;
 int nsIContentUtils_Release (int *) ;
 int nsIFactory_CreateInstance (int *,int *,int *,void**) ;
 int nsIFactory_Release (int *) ;

void init_mutation(nsIComponentManager *component_manager)
{
    nsIFactory *factory;
    nsresult nsres;

    if(!component_manager) {
        if(content_utils) {
            nsIContentUtils_Release(content_utils);
            content_utils = ((void*)0);
        }
        return;
    }

    nsres = nsIComponentManager_GetClassObject(component_manager, &NS_ICONTENTUTILS_CID,
            &IID_nsIFactory, (void**)&factory);
    if(NS_FAILED(nsres)) {
        ERR("Could not create nsIContentUtils service: %08x\n", nsres);
        return;
    }

    nsres = nsIFactory_CreateInstance(factory, ((void*)0), &IID_nsIContentUtils, (void**)&content_utils);
    nsIFactory_Release(factory);
    if(NS_FAILED(nsres))
        ERR("Could not create nsIContentUtils instance: %08x\n", nsres);
}
