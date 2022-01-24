#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int refs; TYPE_2__ IUnknown_iface; } ;
typedef  TYPE_1__ Test_CallContext ;
typedef  TYPE_2__ IUnknown ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int RPC_E_CALL_COMPLETE ; 
 int /*<<< orphan*/  TestCallContext_Vtbl ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int FUNC9 (TYPE_2__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT hr;
    ULONG refs;
    IUnknown *pUnk;
    Test_CallContext *test_object;

    if (!&pCoSwitchCallContext)
    {
        FUNC10("CoSwitchCallContext not present\n");
        return;
    }

    FUNC1(NULL);

    test_object = FUNC4(FUNC3(), 0, sizeof(Test_CallContext));
    test_object->IUnknown_iface.lpVtbl = &TestCallContext_Vtbl;
    test_object->refs = 1;

    hr = FUNC0(&IID_IUnknown, (void**)&pUnk);
    FUNC7(hr == RPC_E_CALL_COMPLETE, "Expected RPC_E_CALL_COMPLETE, got 0x%08x\n", hr);

    pUnk = (IUnknown*)0xdeadbeef;
    hr = FUNC9(&test_object->IUnknown_iface, &pUnk);
    FUNC8(hr, "CoSwitchCallContext");
    FUNC7(pUnk == NULL, "expected NULL, got %p\n", pUnk);
    refs = FUNC5(&test_object->IUnknown_iface);
    FUNC7(refs == 2, "Expected refcount 2, got %d\n", refs);
    FUNC6(&test_object->IUnknown_iface);

    pUnk = (IUnknown*)0xdeadbeef;
    hr = FUNC0(&IID_IUnknown, (void**)&pUnk);
    FUNC8(hr, "CoGetCallContext");
    FUNC7(pUnk == &test_object->IUnknown_iface, "expected %p, got %p\n",
       &test_object->IUnknown_iface, pUnk);
    refs = FUNC5(&test_object->IUnknown_iface);
    FUNC7(refs == 3, "Expected refcount 3, got %d\n", refs);
    FUNC6(&test_object->IUnknown_iface);
    FUNC6(pUnk);

    pUnk = (IUnknown*)0xdeadbeef;
    hr = FUNC9(NULL, &pUnk);
    FUNC8(hr, "CoSwitchCallContext");
    FUNC7(pUnk == &test_object->IUnknown_iface, "expected %p, got %p\n",
       &test_object->IUnknown_iface, pUnk);
    refs = FUNC5(&test_object->IUnknown_iface);
    FUNC7(refs == 2, "Expected refcount 2, got %d\n", refs);
    FUNC6(&test_object->IUnknown_iface);

    hr = FUNC0(&IID_IUnknown, (void**)&pUnk);
    FUNC7(hr == RPC_E_CALL_COMPLETE, "Expected RPC_E_CALL_COMPLETE, got 0x%08x\n", hr);

    FUNC6(&test_object->IUnknown_iface);

    FUNC2();
}