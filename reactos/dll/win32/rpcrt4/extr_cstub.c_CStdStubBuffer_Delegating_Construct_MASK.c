#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int RefCount; int /*<<< orphan*/  pPSFactory; int /*<<< orphan*/ * pvServerObject; int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {TYPE_2__ stub_buffer; int /*<<< orphan*/  base_obj; int /*<<< orphan*/  base_stub; } ;
typedef  TYPE_3__ cstdstubbuffer_delegating_t ;
struct TYPE_8__ {int /*<<< orphan*/  DispatchTableCount; int /*<<< orphan*/  piid; } ;
struct TYPE_11__ {int /*<<< orphan*/  Vtbl; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  PCInterfaceName ;
typedef  int /*<<< orphan*/  LPUNKNOWN ;
typedef  scalar_t__ LPRPCSTUBBUFFER ;
typedef  int /*<<< orphan*/  LPPSFACTORYBUFFER ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_4__ CInterfaceStubVtbl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_E_UNEXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

HRESULT FUNC14(REFIID riid,
                                            LPUNKNOWN pUnkServer,
                                            PCInterfaceName name,
                                            CInterfaceStubVtbl *vtbl,
                                            REFIID delegating_iid,
                                            LPPSFACTORYBUFFER pPSFactory,
                                            LPRPCSTUBBUFFER *ppStub)
{
    cstdstubbuffer_delegating_t *This;
    IUnknown *pvServer;
    HRESULT r;

    FUNC9("(%p,%p,%p,%p) %s\n", &pUnkServer, vtbl, pPSFactory, ppStub, name);
    FUNC9("iid=%s delegating to %s\n", FUNC11(vtbl->header.piid), FUNC11(delegating_iid));
    FUNC9("vtbl=%p\n", &vtbl->Vtbl);

    if (!FUNC8(vtbl->header.piid, riid))
    {
        FUNC0("IID mismatch during stub creation\n");
        return RPC_E_UNEXPECTED;
    }

    r = FUNC6(pUnkServer, riid, (void**)&pvServer);
    if(FUNC1(r)) return r;

    This = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(*This));
    if (!This)
    {
        FUNC7(pvServer);
        return E_OUTOFMEMORY;
    }

    This->base_obj = FUNC12( vtbl->header.DispatchTableCount );
    r = FUNC10(delegating_iid, (IUnknown*)&This->base_obj, &This->base_stub);
    if(FUNC1(r))
    {
        FUNC13(This->base_obj);
        FUNC4(FUNC2(), 0, This);
        FUNC7(pvServer);
        return r;
    }

    This->stub_buffer.lpVtbl = &vtbl->Vtbl;
    This->stub_buffer.RefCount = 1;
    This->stub_buffer.pvServerObject = pvServer;
    This->stub_buffer.pPSFactory = pPSFactory;
    *ppStub = (LPRPCSTUBBUFFER)&This->stub_buffer;

    FUNC5(pPSFactory);
    return S_OK;
}