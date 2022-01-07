
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int policy ;
typedef int nsIDOMHTMLElement ;
struct TYPE_3__ {int window; int IInternetHostSecurityManager_iface; } ;
typedef int IUnknown ;
typedef int IClassFactoryEx ;
typedef int IClassFactory ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef scalar_t__ DWORD ;
typedef int CLSID ;
typedef int BYTE ;


 int CLSCTX_INPROC_SERVER ;
 int CLSCTX_LOCAL_SERVER ;
 scalar_t__ CoGetClassObject (int *,int,int *,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FIXME (char*) ;
 int IClassFactoryEx_Release (int *) ;
 scalar_t__ IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 scalar_t__ IClassFactory_QueryInterface (int *,int *,void**) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IClassFactoryEx ;
 int IID_IUnknown ;
 scalar_t__ IInternetHostSecurityManager_ProcessUrlAction (int *,int ,int *,int,int *,int,int ,int ) ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int TRACE (char*,int ) ;
 int URLACTION_ACTIVEX_RUN ;
 scalar_t__ URLPOLICY_ALLOW ;
 int WARN (char*,...) ;
 int check_codebase (int ,int *) ;
 int debugstr_guid (int *) ;
 int get_elem_clsid (int *,int *) ;

__attribute__((used)) static IUnknown *create_activex_object(HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, CLSID *clsid)
{
    IClassFactoryEx *cfex;
    IClassFactory *cf;
    IUnknown *obj;
    DWORD policy;
    HRESULT hres;

    if(!get_elem_clsid(nselem, clsid)) {
        WARN("Could not determine element CLSID\n");
        return ((void*)0);
    }

    TRACE("clsid %s\n", debugstr_guid(clsid));

    policy = 0;
    hres = IInternetHostSecurityManager_ProcessUrlAction(&doc->IInternetHostSecurityManager_iface,
            URLACTION_ACTIVEX_RUN, (BYTE*)&policy, sizeof(policy), (BYTE*)clsid, sizeof(GUID), 0, 0);
    if(FAILED(hres) || policy != URLPOLICY_ALLOW) {
        WARN("ProcessUrlAction returned %08x %x\n", hres, policy);
        return ((void*)0);
    }

    hres = CoGetClassObject(clsid, CLSCTX_INPROC_SERVER|CLSCTX_LOCAL_SERVER, ((void*)0), &IID_IClassFactory, (void**)&cf);
    if(hres == REGDB_E_CLASSNOTREG)
        check_codebase(doc->window, nselem);
    if(FAILED(hres))
        return ((void*)0);

    hres = IClassFactory_QueryInterface(cf, &IID_IClassFactoryEx, (void**)&cfex);
    if(SUCCEEDED(hres)) {
        FIXME("Use IClassFactoryEx\n");
        IClassFactoryEx_Release(cfex);
    }

    hres = IClassFactory_CreateInstance(cf, ((void*)0), &IID_IUnknown, (void**)&obj);
    IClassFactory_Release(cf);
    if(FAILED(hres))
        return ((void*)0);

    return obj;
}
