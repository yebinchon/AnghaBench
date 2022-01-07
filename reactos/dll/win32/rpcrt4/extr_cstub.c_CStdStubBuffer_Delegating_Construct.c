
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int RefCount; int pPSFactory; int * pvServerObject; int * lpVtbl; } ;
struct TYPE_10__ {TYPE_2__ stub_buffer; int base_obj; int base_stub; } ;
typedef TYPE_3__ cstdstubbuffer_delegating_t ;
struct TYPE_8__ {int DispatchTableCount; int piid; } ;
struct TYPE_11__ {int Vtbl; TYPE_1__ header; } ;
typedef int REFIID ;
typedef int PCInterfaceName ;
typedef int LPUNKNOWN ;
typedef scalar_t__ LPRPCSTUBBUFFER ;
typedef int LPPSFACTORYBUFFER ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_4__ CInterfaceStubVtbl ;


 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int IPSFactoryBuffer_AddRef (int ) ;
 int IUnknown_QueryInterface (int ,int ,void**) ;
 int IUnknown_Release (int *) ;
 int IsEqualGUID (int ,int ) ;
 int RPC_E_UNEXPECTED ;
 int S_OK ;
 int TRACE (char*,int *,...) ;
 int create_stub (int ,int *,int *) ;
 int debugstr_guid (int ) ;
 int get_delegating_vtbl (int ) ;
 int release_delegating_vtbl (int ) ;

HRESULT CStdStubBuffer_Delegating_Construct(REFIID riid,
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

    TRACE("(%p,%p,%p,%p) %s\n", pUnkServer, vtbl, pPSFactory, ppStub, name);
    TRACE("iid=%s delegating to %s\n", debugstr_guid(vtbl->header.piid), debugstr_guid(delegating_iid));
    TRACE("vtbl=%p\n", &vtbl->Vtbl);

    if (!IsEqualGUID(vtbl->header.piid, riid))
    {
        ERR("IID mismatch during stub creation\n");
        return RPC_E_UNEXPECTED;
    }

    r = IUnknown_QueryInterface(pUnkServer, riid, (void**)&pvServer);
    if(FAILED(r)) return r;

    This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*This));
    if (!This)
    {
        IUnknown_Release(pvServer);
        return E_OUTOFMEMORY;
    }

    This->base_obj = get_delegating_vtbl( vtbl->header.DispatchTableCount );
    r = create_stub(delegating_iid, (IUnknown*)&This->base_obj, &This->base_stub);
    if(FAILED(r))
    {
        release_delegating_vtbl(This->base_obj);
        HeapFree(GetProcessHeap(), 0, This);
        IUnknown_Release(pvServer);
        return r;
    }

    This->stub_buffer.lpVtbl = &vtbl->Vtbl;
    This->stub_buffer.RefCount = 1;
    This->stub_buffer.pvServerObject = pvServer;
    This->stub_buffer.pPSFactory = pPSFactory;
    *ppStub = (LPRPCSTUBBUFFER)&This->stub_buffer;

    IPSFactoryBuffer_AddRef(pPSFactory);
    return S_OK;
}
