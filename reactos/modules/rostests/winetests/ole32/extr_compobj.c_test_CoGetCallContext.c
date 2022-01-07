
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int refs; TYPE_2__ IUnknown_iface; } ;
typedef TYPE_1__ Test_CallContext ;
typedef TYPE_2__ IUnknown ;
typedef int HRESULT ;


 int CoGetCallContext (int *,void**) ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IID_IUnknown ;
 int IUnknown_AddRef (TYPE_2__*) ;
 int IUnknown_Release (TYPE_2__*) ;
 int RPC_E_CALL_COMPLETE ;
 int TestCallContext_Vtbl ;
 int ok (int,char*,...) ;
 int ok_ole_success (int,char*) ;
 int pCoSwitchCallContext (TYPE_2__*,TYPE_2__**) ;
 int skip (char*) ;

__attribute__((used)) static void test_CoGetCallContext(void)
{
    HRESULT hr;
    ULONG refs;
    IUnknown *pUnk;
    Test_CallContext *test_object;

    if (!pCoSwitchCallContext)
    {
        skip("CoSwitchCallContext not present\n");
        return;
    }

    CoInitialize(((void*)0));

    test_object = HeapAlloc(GetProcessHeap(), 0, sizeof(Test_CallContext));
    test_object->IUnknown_iface.lpVtbl = &TestCallContext_Vtbl;
    test_object->refs = 1;

    hr = CoGetCallContext(&IID_IUnknown, (void**)&pUnk);
    ok(hr == RPC_E_CALL_COMPLETE, "Expected RPC_E_CALL_COMPLETE, got 0x%08x\n", hr);

    pUnk = (IUnknown*)0xdeadbeef;
    hr = pCoSwitchCallContext(&test_object->IUnknown_iface, &pUnk);
    ok_ole_success(hr, "CoSwitchCallContext");
    ok(pUnk == ((void*)0), "expected NULL, got %p\n", pUnk);
    refs = IUnknown_AddRef(&test_object->IUnknown_iface);
    ok(refs == 2, "Expected refcount 2, got %d\n", refs);
    IUnknown_Release(&test_object->IUnknown_iface);

    pUnk = (IUnknown*)0xdeadbeef;
    hr = CoGetCallContext(&IID_IUnknown, (void**)&pUnk);
    ok_ole_success(hr, "CoGetCallContext");
    ok(pUnk == &test_object->IUnknown_iface, "expected %p, got %p\n",
       &test_object->IUnknown_iface, pUnk);
    refs = IUnknown_AddRef(&test_object->IUnknown_iface);
    ok(refs == 3, "Expected refcount 3, got %d\n", refs);
    IUnknown_Release(&test_object->IUnknown_iface);
    IUnknown_Release(pUnk);

    pUnk = (IUnknown*)0xdeadbeef;
    hr = pCoSwitchCallContext(((void*)0), &pUnk);
    ok_ole_success(hr, "CoSwitchCallContext");
    ok(pUnk == &test_object->IUnknown_iface, "expected %p, got %p\n",
       &test_object->IUnknown_iface, pUnk);
    refs = IUnknown_AddRef(&test_object->IUnknown_iface);
    ok(refs == 2, "Expected refcount 2, got %d\n", refs);
    IUnknown_Release(&test_object->IUnknown_iface);

    hr = CoGetCallContext(&IID_IUnknown, (void**)&pUnk);
    ok(hr == RPC_E_CALL_COMPLETE, "Expected RPC_E_CALL_COMPLETE, got 0x%08x\n", hr);

    IUnknown_Release(&test_object->IUnknown_iface);

    CoUninitialize();
}
