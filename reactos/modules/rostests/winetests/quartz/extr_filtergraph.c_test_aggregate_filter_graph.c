
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * member_0; } ;
struct TYPE_4__ {int AddRef_called; int Release_called; int IUnknown_iface; int member_2; int member_1; TYPE_1__ member_0; } ;
typedef TYPE_2__ IUnknownImpl ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_FilterGraph ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IFilterMapper ;
 int IID_IFilterMapper2 ;
 int IID_IFilterMapper3 ;
 int IID_IUnknown ;
 int IUnknownImpl_Vtbl ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_aggregate_filter_graph(void)
{
    HRESULT hr;
    IUnknown *pgraph;
    IUnknown *punk;
    IUnknownImpl unk_outer = { { &IUnknownImpl_Vtbl }, 0, 0 };

    hr = CoCreateInstance(&CLSID_FilterGraph, &unk_outer.IUnknown_iface, CLSCTX_INPROC_SERVER,
                          &IID_IUnknown, (void **)&pgraph);
    ok(hr == S_OK, "CoCreateInstance returned %x\n", hr);
    ok(pgraph != &unk_outer.IUnknown_iface, "pgraph = %p, expected not %p\n", pgraph, &unk_outer.IUnknown_iface);

    hr = IUnknown_QueryInterface(pgraph, &IID_IUnknown, (void **)&punk);
    ok(hr == S_OK, "CoCreateInstance returned %x\n", hr);
    ok(punk != &unk_outer.IUnknown_iface, "punk = %p, expected not %p\n", punk, &unk_outer.IUnknown_iface);
    IUnknown_Release(punk);

    ok(unk_outer.AddRef_called == 0, "IUnknownImpl_AddRef called %d times\n", unk_outer.AddRef_called);
    ok(unk_outer.Release_called == 0, "IUnknownImpl_Release called %d times\n", unk_outer.Release_called);
    unk_outer.AddRef_called = 0;
    unk_outer.Release_called = 0;

    hr = IUnknown_QueryInterface(pgraph, &IID_IFilterMapper, (void **)&punk);
    ok(hr == S_OK, "CoCreateInstance returned %x\n", hr);
    ok(punk != &unk_outer.IUnknown_iface, "punk = %p, expected not %p\n", punk, &unk_outer.IUnknown_iface);
    IUnknown_Release(punk);

    ok(unk_outer.AddRef_called == 1, "IUnknownImpl_AddRef called %d times\n", unk_outer.AddRef_called);
    ok(unk_outer.Release_called == 1, "IUnknownImpl_Release called %d times\n", unk_outer.Release_called);
    unk_outer.AddRef_called = 0;
    unk_outer.Release_called = 0;

    hr = IUnknown_QueryInterface(pgraph, &IID_IFilterMapper2, (void **)&punk);
    ok(hr == S_OK, "CoCreateInstance returned %x\n", hr);
    ok(punk != &unk_outer.IUnknown_iface, "punk = %p, expected not %p\n", punk, &unk_outer.IUnknown_iface);
    IUnknown_Release(punk);

    ok(unk_outer.AddRef_called == 1, "IUnknownImpl_AddRef called %d times\n", unk_outer.AddRef_called);
    ok(unk_outer.Release_called == 1, "IUnknownImpl_Release called %d times\n", unk_outer.Release_called);
    unk_outer.AddRef_called = 0;
    unk_outer.Release_called = 0;

    hr = IUnknown_QueryInterface(pgraph, &IID_IFilterMapper3, (void **)&punk);
    ok(hr == S_OK, "CoCreateInstance returned %x\n", hr);
    ok(punk != &unk_outer.IUnknown_iface, "punk = %p, expected not %p\n", punk, &unk_outer.IUnknown_iface);
    IUnknown_Release(punk);

    ok(unk_outer.AddRef_called == 1, "IUnknownImpl_AddRef called %d times\n", unk_outer.AddRef_called);
    ok(unk_outer.Release_called == 1, "IUnknownImpl_Release called %d times\n", unk_outer.Release_called);

    IUnknown_Release(pgraph);
}
