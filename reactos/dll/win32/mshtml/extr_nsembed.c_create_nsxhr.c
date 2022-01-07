
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsresult ;
typedef int nsIXMLHttpRequest ;
typedef int nsIScriptSecurityManager ;
typedef int nsIPrincipal ;
typedef int nsIGlobalObject ;
typedef int nsIDOMWindow ;


 int ERR (char*,scalar_t__) ;
 int IID_nsIGlobalObject ;
 int IID_nsIScriptSecurityManager ;
 int IID_nsIXMLHttpRequest ;
 scalar_t__ NS_FAILED (scalar_t__) ;
 scalar_t__ NS_OK ;
 int NS_SCRIPTSECURITYMANAGER_CONTRACTID ;
 int NS_XMLHTTPREQUEST_CONTRACTID ;
 int assert (int) ;
 scalar_t__ nsIComponentManager_CreateInstanceByContractID (int ,int ,int *,int *,void**) ;
 scalar_t__ nsIDOMWindow_QueryInterface (int *,int *,void**) ;
 int nsIGlobalObject_Release (int *) ;
 scalar_t__ nsIScriptSecurityManager_GetSystemPrincipal (int *,int **) ;
 int nsIScriptSecurityManager_Release (int *) ;
 scalar_t__ nsIServiceManager_GetServiceByContractID (int ,int ,int *,void**) ;
 int nsISupports_Release (int *) ;
 scalar_t__ nsIXMLHttpRequest_Init (int *,int *,int *,int *,int *,int *) ;
 int nsIXMLHttpRequest_Release (int *) ;
 int pCompMgr ;
 int pServMgr ;

nsIXMLHttpRequest *create_nsxhr(nsIDOMWindow *nswindow)
{
    nsIScriptSecurityManager *secman;
    nsIPrincipal *nspri;
    nsIGlobalObject *nsglo;
    nsIXMLHttpRequest *nsxhr;
    nsresult nsres;

    nsres = nsIServiceManager_GetServiceByContractID(pServMgr,
            NS_SCRIPTSECURITYMANAGER_CONTRACTID,
            &IID_nsIScriptSecurityManager, (void**)&secman);
    if(NS_FAILED(nsres)) {
        ERR("Could not get sec manager service: %08x\n", nsres);
        return ((void*)0);
    }

    nsres = nsIScriptSecurityManager_GetSystemPrincipal(secman, &nspri);
    nsIScriptSecurityManager_Release(secman);
    if(NS_FAILED(nsres)) {
        ERR("GetSystemPrincipal failed: %08x\n", nsres);
        return ((void*)0);
    }

    nsres = nsIDOMWindow_QueryInterface(nswindow, &IID_nsIGlobalObject, (void **)&nsglo);
    assert(nsres == NS_OK);

    nsres = nsIComponentManager_CreateInstanceByContractID(pCompMgr,
            NS_XMLHTTPREQUEST_CONTRACTID, ((void*)0), &IID_nsIXMLHttpRequest,
            (void**)&nsxhr);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIXMLHttpRequest: %08x\n", nsres);
        nsISupports_Release(nspri);
        nsIGlobalObject_Release(nsglo);
        return ((void*)0);
    }

    nsres = nsIXMLHttpRequest_Init(nsxhr, nspri, ((void*)0), nsglo, ((void*)0), ((void*)0));

    nsISupports_Release(nspri);
    nsIGlobalObject_Release(nsglo);
    if(NS_FAILED(nsres)) {
        ERR("nsIXMLHttpRequest_Init failed: %08x\n", nsres);
        nsIXMLHttpRequest_Release(nsxhr);
        return ((void*)0);
    }
    return nsxhr;
}
