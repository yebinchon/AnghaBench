
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IInternetProtocolInfo ;
typedef int IClassFactory ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CLASS_E_CLASSNOTAVAILABLE ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_GopherProtocol ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IInternetProtocol ;
 int IID_IInternetProtocolInfo ;
 int IID_IUnknown ;
 int IInternetProtocol_Release (int ) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int async_protocol ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int test_early_abort (int *) ;
 int test_priority (int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_gopher_protocol(void)
{
    IInternetProtocolInfo *protocol_info;
    IClassFactory *factory;
    IUnknown *unk;
    HRESULT hres;

    trace("Testing gopher protocol...\n");

    hres = CoGetClassObject(&CLSID_GopherProtocol, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK ||
       broken(hres == REGDB_E_CLASSNOTREG || hres == CLASS_E_CLASSNOTAVAILABLE),
       "CoGetClassObject failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IUnknown_QueryInterface(unk, &IID_IInternetProtocolInfo, (void**)&protocol_info);
    ok(hres == E_NOINTERFACE, "Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\n", hres);

    hres = IUnknown_QueryInterface(unk, &IID_IClassFactory, (void**)&factory);
    ok(hres == S_OK, "Could not get IClassFactory interface\n");
    IUnknown_Release(unk);
    if(FAILED(hres))
        return;

    hres = IClassFactory_CreateInstance(factory, ((void*)0), &IID_IInternetProtocol,
                                        (void**)&async_protocol);
    IClassFactory_Release(factory);
    ok(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);

    test_priority(async_protocol);

    IInternetProtocol_Release(async_protocol);

    test_early_abort(&CLSID_GopherProtocol);
}
