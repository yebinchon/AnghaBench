
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IInternetSession ;
typedef int IClassFactory ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_AboutProtocol ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IInternetSession_RegisterNameSpace (int *,int *,int *,char const*,int ,int *,int ) ;
 int IInternetSession_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetGetSession (int ,int **,int ) ;

__attribute__((used)) static void register_protocols(void)
{
    IInternetSession *session;
    IClassFactory *factory;
    HRESULT hres;

    static const WCHAR wszAbout[] = {'a','b','o','u','t',0};

    hres = pCoInternetGetSession(0, &session, 0);
    ok(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = CoGetClassObject(&CLSID_AboutProtocol, CLSCTX_INPROC_SERVER, ((void*)0),
            &IID_IClassFactory, (void**)&factory);
    ok(hres == S_OK, "Could not get AboutProtocol factory: %08x\n", hres);
    if(FAILED(hres))
        return;

    IInternetSession_RegisterNameSpace(session, factory, &CLSID_AboutProtocol,
                                       wszAbout, 0, ((void*)0), 0);
    IClassFactory_Release(factory);

    IInternetSession_Release(session);
}
