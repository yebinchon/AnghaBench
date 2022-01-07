
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stub_manager {int object; int oid; } ;
struct ifstub {int ipid; } ;
struct TYPE_3__ {int cPublicRefs; int ipid; int oid; int flags; int oxid; } ;
typedef TYPE_1__ STDOBJREF ;
typedef int REFIID ;
typedef int MSHLFLAGS ;
typedef int IUnknown ;
typedef int IRpcStubBuffer ;
typedef int IPSFactoryBuffer ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BOOL ;
typedef int APARTMENT ;


 int ERR (char*,int ,...) ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ E_OUTOFMEMORY ;
 int FALSE ;
 int IID_IUnknown ;
 scalar_t__ IPSFactoryBuffer_CreateStub (int *,int ,int ,int **) ;
 int IPSFactoryBuffer_Release (int *) ;
 int IRpcStubBuffer_Release (int *) ;
 int IsEqualIID (int ,int *) ;
 int MSHLFLAGS_NOPING ;
 int MSHLFLAGS_TABLESTRONG ;
 int MSHLFLAGS_TABLEWEAK ;
 int NORMALEXTREFS ;
 int RPC_RegisterInterface (int ) ;
 int SORFP_TABLEWEAK ;
 int SORF_NOPING ;
 int SORF_NULL ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ apartment_createwindowifneeded (int *) ;
 scalar_t__ apartment_getoxid (int *,int *) ;
 int debugstr_guid (int ) ;
 scalar_t__ get_facbuf_for_iid (int ,int **) ;
 struct stub_manager* get_stub_manager_from_object (int *,int *,int ) ;
 int stub_manager_ext_addref (struct stub_manager*,int,int ) ;
 int stub_manager_ext_release (struct stub_manager*,int ,int ,int ) ;
 struct ifstub* stub_manager_find_ifstub (struct stub_manager*,int ,int) ;
 int stub_manager_int_release (struct stub_manager*) ;
 struct ifstub* stub_manager_new_ifstub (struct stub_manager*,int *,int ,int ,void*,int) ;

HRESULT marshal_object(APARTMENT *apt, STDOBJREF *stdobjref, REFIID riid, IUnknown *object,
    DWORD dest_context, void *dest_context_data, MSHLFLAGS mshlflags)
{
    struct stub_manager *manager;
    struct ifstub *ifstub;
    BOOL tablemarshal;
    HRESULT hr;

    hr = apartment_getoxid(apt, &stdobjref->oxid);
    if (hr != S_OK)
        return hr;

    hr = apartment_createwindowifneeded(apt);
    if (hr != S_OK)
        return hr;

    if (!(manager = get_stub_manager_from_object(apt, object, TRUE)))
        return E_OUTOFMEMORY;

    stdobjref->flags = SORF_NULL;
    if (mshlflags & MSHLFLAGS_TABLEWEAK)
        stdobjref->flags |= SORFP_TABLEWEAK;
    if (mshlflags & MSHLFLAGS_NOPING)
        stdobjref->flags |= SORF_NOPING;
    stdobjref->oid = manager->oid;

    tablemarshal = ((mshlflags & MSHLFLAGS_TABLESTRONG) || (mshlflags & MSHLFLAGS_TABLEWEAK));


    ifstub = stub_manager_find_ifstub(manager, riid, mshlflags);
    if (!ifstub) {
        IRpcStubBuffer *stub = ((void*)0);



        if (!IsEqualIID(riid, &IID_IUnknown))
        {
            IPSFactoryBuffer *psfb;

            hr = get_facbuf_for_iid(riid, &psfb);
            if (hr == S_OK) {
                hr = IPSFactoryBuffer_CreateStub(psfb, riid, manager->object, &stub);
                IPSFactoryBuffer_Release(psfb);
                if (hr != S_OK)
                    ERR("Failed to create an IRpcStubBuffer from IPSFactory for %s with error 0x%08x\n",
                        debugstr_guid(riid), hr);
            }else {
                ERR("couldn't get IPSFactory buffer for interface %s\n", debugstr_guid(riid));
                hr = E_NOINTERFACE;
            }

        }

        if (hr == S_OK) {
            ifstub = stub_manager_new_ifstub(manager, stub, riid, dest_context, dest_context_data, mshlflags);
            if (!ifstub)
                hr = E_OUTOFMEMORY;
        }
        if (stub) IRpcStubBuffer_Release(stub);

        if (hr != S_OK) {
            stub_manager_int_release(manager);


            stub_manager_ext_release(manager, 0, FALSE, TRUE);
            return hr;
        }
    }

    if (!tablemarshal)
    {
        stdobjref->cPublicRefs = NORMALEXTREFS;
        stub_manager_ext_addref(manager, stdobjref->cPublicRefs, FALSE);
    }
    else
    {
        stdobjref->cPublicRefs = 0;
        if (mshlflags & MSHLFLAGS_TABLESTRONG)
            stub_manager_ext_addref(manager, 1, FALSE);
        else
            stub_manager_ext_addref(manager, 0, TRUE);
    }


    RPC_RegisterInterface(riid);

    stdobjref->ipid = ifstub->ipid;

    stub_manager_int_release(manager);
    return S_OK;
}
