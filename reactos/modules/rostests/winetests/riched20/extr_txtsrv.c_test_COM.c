
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * member_0; } ;
struct unk_impl {int member_1; int ref; int inner_unk; int IUnknown_iface; int * member_2; TYPE_1__ member_0; } ;
struct TYPE_4__ {int * member_0; } ;
struct ITextHostTestImpl {int member_1; int ITextHost_iface; TYPE_2__ member_0; } ;
typedef int ULONG ;
typedef int ITextServices ;
typedef scalar_t__ HRESULT ;


 int ITextServices_AddRef (int *) ;
 int ITextServices_Release (int *) ;
 scalar_t__ IUnknown_QueryInterface (int ,int ,void**) ;
 int IUnknown_Release (int ) ;
 scalar_t__ S_OK ;
 int itextHostVtbl ;
 int ok (int,char*,...) ;
 scalar_t__ pCreateTextServices (int *,int *,int *) ;
 int pIID_ITextServices ;
 int unk_vtbl ;

__attribute__((used)) static void test_COM(void)
{
    struct unk_impl unk_obj = {{&unk_vtbl}, 19, ((void*)0)};
    struct ITextHostTestImpl texthost = {{&itextHostVtbl}, 1};
    ITextServices *textsrv;
    ULONG refcount;
    HRESULT hr;


    hr = pCreateTextServices(&unk_obj.IUnknown_iface, &texthost.ITextHost_iface,
                             &unk_obj.inner_unk);
    ok(hr == S_OK, "CreateTextServices failed: %08x\n", hr);
    hr = IUnknown_QueryInterface(unk_obj.inner_unk, pIID_ITextServices, (void**)&textsrv);
    ok(hr == S_OK, "QueryInterface for IID_ITextServices failed: %08x\n", hr);
    refcount = ITextServices_AddRef(textsrv);
    ok(refcount == unk_obj.ref, "CreateTextServices just pretends to support COM aggregation\n");
    refcount = ITextServices_Release(textsrv);
    ok(refcount == unk_obj.ref, "CreateTextServices just pretends to support COM aggregation\n");
    refcount = ITextServices_Release(textsrv);
    ok(refcount == 19, "Refcount should be back at 19 but is %u\n", refcount);

    IUnknown_Release(unk_obj.inner_unk);
}
