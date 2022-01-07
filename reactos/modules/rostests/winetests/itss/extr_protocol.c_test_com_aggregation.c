
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * member_0; } ;
typedef TYPE_1__ IUnknown ;
typedef int IClassFactory ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 int CHECK_CALLED (int ) ;
 scalar_t__ CLASS_E_NOAGGREGATION ;
 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoGetClassObject (int const*,int ,int *,int *,void**) ;
 scalar_t__ IClassFactory_CreateInstance (int *,TYPE_1__*,int *,void**) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IInternetProtocol ;
 int IID_IUnknown ;
 scalar_t__ IUnknown_QueryInterface (TYPE_1__*,int *,void**) ;
 int IUnknown_Release (TYPE_1__*) ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int outer_QI_test ;
 int outer_test_iid ;
 int outer_vtbl ;

__attribute__((used)) static void test_com_aggregation(const CLSID *clsid)
{
    IUnknown outer = { &outer_vtbl };
    IClassFactory *class_factory;
    IUnknown *unk, *unk2, *unk3;
    HRESULT hres;

    hres = CoGetClassObject(clsid, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IClassFactory, (void**)&class_factory);
    ok(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);

    hres = IClassFactory_CreateInstance(class_factory, &outer, &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "CreateInstance returned: %08x\n", hres);

    hres = IUnknown_QueryInterface(unk, &IID_IInternetProtocol, (void**)&unk2);
    ok(hres == S_OK, "Could not get IInternetProtocol iface: %08x\n", hres);

    SET_EXPECT(outer_QI_test);
    hres = IUnknown_QueryInterface(unk2, &outer_test_iid, (void**)&unk3);
    CHECK_CALLED(outer_QI_test);
    ok(hres == S_OK, "Could not get IInternetProtocol iface: %08x\n", hres);
    ok(unk3 == (IUnknown*)0xdeadbeef, "unexpected unk2\n");

    IUnknown_Release(unk2);
    IUnknown_Release(unk);

    unk = (void*)0xdeadbeef;
    hres = IClassFactory_CreateInstance(class_factory, &outer, &IID_IInternetProtocol, (void**)&unk);
    ok(hres == CLASS_E_NOAGGREGATION, "CreateInstance returned: %08x\n", hres);
    ok(!unk, "unk = %p\n", unk);

    IClassFactory_Release(class_factory);
}
