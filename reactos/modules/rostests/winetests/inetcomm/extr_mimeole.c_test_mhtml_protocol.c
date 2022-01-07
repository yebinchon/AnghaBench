
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * member_0; } ;
typedef TYPE_1__ IUnknown ;
typedef int IClassFactory ;
typedef scalar_t__ HRESULT ;


 unsigned int ARRAY_SIZE (scalar_t__) ;
 scalar_t__ CLASS_E_NOAGGREGATION ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_IMimeHtmlProtocol ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ IClassFactory_CreateInstance (int *,TYPE_1__*,int *,void**) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IInternetProtocol ;
 int IID_IInternetProtocolInfo ;
 int IID_IUnknown ;
 scalar_t__ IUnknown_QueryInterface (TYPE_1__*,int *,void**) ;
 int IUnknown_Release (TYPE_1__*) ;
 scalar_t__ S_OK ;
 scalar_t__ binding_tests ;
 int broken_mhtml_resolver ;
 int ok (int,char*,...) ;
 int outer_vtbl ;
 int test_mhtml_protocol_binding (scalar_t__) ;
 int test_mhtml_protocol_info () ;

__attribute__((used)) static void test_mhtml_protocol(void)
{
    IUnknown outer = { &outer_vtbl };
    IClassFactory *class_factory;
    IUnknown *unk, *unk2;
    unsigned i;
    HRESULT hres;


    hres = CoGetClassObject(&CLSID_IMimeHtmlProtocol, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);

    hres = IUnknown_QueryInterface(unk, &IID_IInternetProtocolInfo, (void**)&unk2);
    ok(hres == E_NOINTERFACE, "IInternetProtocolInfo supported\n");

    hres = IUnknown_QueryInterface(unk, &IID_IClassFactory, (void**)&class_factory);
    ok(hres == S_OK, "Could not get IClassFactory iface: %08x\n", hres);
    IUnknown_Release(unk);

    hres = IClassFactory_CreateInstance(class_factory, &outer, &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "CreateInstance returned: %08x\n", hres);
    hres = IUnknown_QueryInterface(unk, &IID_IInternetProtocol, (void**)&unk2);
    ok(hres == S_OK, "Could not get IInternetProtocol iface: %08x\n", hres);
    IUnknown_Release(unk2);
    IUnknown_Release(unk);

    hres = IClassFactory_CreateInstance(class_factory, (IUnknown*)0xdeadbeef, &IID_IInternetProtocol, (void**)&unk2);
    ok(hres == CLASS_E_NOAGGREGATION, "CreateInstance returned: %08x\n", hres);

    IClassFactory_Release(class_factory);

    if(!broken_mhtml_resolver)
        test_mhtml_protocol_info();

    for(i = 0; i < ARRAY_SIZE(binding_tests); i++)
        test_mhtml_protocol_binding(binding_tests + i);
}
