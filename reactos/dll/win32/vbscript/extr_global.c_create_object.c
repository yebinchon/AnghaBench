
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct CONFIRMSAFETY {scalar_t__ dwFlags; int * pUnk; scalar_t__ clsid; } ;
struct TYPE_5__ {int safeopt; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int policy ;
typedef int cs ;
typedef int WCHAR ;
typedef int IUnknown ;
typedef int IInternetHostSecurityManager ;
typedef int IClassFactoryEx ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef scalar_t__ GUID ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int CLSCTX_INPROC_SERVER ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSIDFromProgID (int const*,scalar_t__*) ;
 int CoGetClassObject (scalar_t__*,int,int *,int *,void**) ;
 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int GUID_CUSTOM_CONFIRMOBJECTSAFETY ;
 int IClassFactoryEx_Release (int *) ;
 int IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 int IClassFactory_QueryInterface (int *,int *,void**) ;
 int IID_IClassFactory ;
 int IID_IClassFactoryEx ;
 int IID_IUnknown ;
 int IInternetHostSecurityManager_ProcessUrlAction (int *,int ,int *,int,int *,int,int ,int ) ;
 int IInternetHostSecurityManager_QueryCustomPolicy (int *,int *,int **,scalar_t__*,int *,int,int ) ;
 int INTERFACE_USES_SECURITY_MANAGER ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ) ;
 int URLACTION_ACTIVEX_RUN ;
 scalar_t__ URLPOLICY_ALLOW ;
 scalar_t__ URLPOLICY_DISALLOW ;
 int debugstr_guid (scalar_t__*) ;
 int * get_sec_mgr (TYPE_1__*) ;
 int set_object_site (TYPE_1__*,int *) ;

__attribute__((used)) static IUnknown *create_object(script_ctx_t *ctx, const WCHAR *progid)
{
    IInternetHostSecurityManager *secmgr = ((void*)0);
    struct CONFIRMSAFETY cs;
    IClassFactoryEx *cfex;
    IClassFactory *cf;
    DWORD policy_size;
    BYTE *bpolicy;
    IUnknown *obj;
    DWORD policy;
    GUID guid;
    HRESULT hres;

    hres = CLSIDFromProgID(progid, &guid);
    if(FAILED(hres))
        return ((void*)0);

    TRACE("GUID %s\n", debugstr_guid(&guid));

    if(ctx->safeopt & INTERFACE_USES_SECURITY_MANAGER) {
        secmgr = get_sec_mgr(ctx);
        if(!secmgr)
            return ((void*)0);

        policy = 0;
        hres = IInternetHostSecurityManager_ProcessUrlAction(secmgr, URLACTION_ACTIVEX_RUN,
                (BYTE*)&policy, sizeof(policy), (BYTE*)&guid, sizeof(GUID), 0, 0);
        if(FAILED(hres) || policy != URLPOLICY_ALLOW)
            return ((void*)0);
    }

    hres = CoGetClassObject(&guid, CLSCTX_INPROC_SERVER|CLSCTX_LOCAL_SERVER, ((void*)0), &IID_IClassFactory, (void**)&cf);
    if(FAILED(hres))
        return ((void*)0);

    hres = IClassFactory_QueryInterface(cf, &IID_IClassFactoryEx, (void**)&cfex);
    if(SUCCEEDED(hres)) {
        FIXME("Use IClassFactoryEx\n");
        IClassFactoryEx_Release(cfex);
    }

    hres = IClassFactory_CreateInstance(cf, ((void*)0), &IID_IUnknown, (void**)&obj);
    if(FAILED(hres))
        return ((void*)0);

    if(secmgr) {
        cs.clsid = guid;
        cs.pUnk = obj;
        cs.dwFlags = 0;
        hres = IInternetHostSecurityManager_QueryCustomPolicy(secmgr, &GUID_CUSTOM_CONFIRMOBJECTSAFETY,
                &bpolicy, &policy_size, (BYTE*)&cs, sizeof(cs), 0);
        if(SUCCEEDED(hres)) {
            policy = policy_size >= sizeof(DWORD) ? *(DWORD*)bpolicy : URLPOLICY_DISALLOW;
            CoTaskMemFree(bpolicy);
        }

        if(FAILED(hres) || policy != URLPOLICY_ALLOW) {
            IUnknown_Release(obj);
            return ((void*)0);
        }
    }

    hres = set_object_site(ctx, obj);
    if(FAILED(hres)) {
        IUnknown_Release(obj);
        return ((void*)0);
    }

    return obj;
}
