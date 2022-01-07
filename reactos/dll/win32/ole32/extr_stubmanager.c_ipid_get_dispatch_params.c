
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_manager {int dummy; } ;
struct ifstub {int * iface; int iid; int * chan; int * stubbuffer; } ;
typedef int IUnknown ;
typedef int IRpcStubBuffer ;
typedef int IRpcChannelBuffer ;
typedef int IPID ;
typedef int IID ;
typedef scalar_t__ HRESULT ;
typedef int APARTMENT ;


 int IRpcChannelBuffer_AddRef (int *) ;
 int IRpcStubBuffer_AddRef (int *) ;
 scalar_t__ RPC_E_DISCONNECTED ;
 scalar_t__ S_OK ;
 scalar_t__ ipid_to_ifstub (int const*,int **,struct stub_manager**,struct ifstub**) ;
 int stub_manager_int_release (struct stub_manager*) ;

HRESULT ipid_get_dispatch_params(const IPID *ipid, APARTMENT **stub_apt,
                                 struct stub_manager **manager,
                                 IRpcStubBuffer **stub, IRpcChannelBuffer **chan,
                                 IID *iid, IUnknown **iface)
{
    struct stub_manager *stubmgr;
    struct ifstub *ifstub;
    APARTMENT *apt;
    HRESULT hr;

    hr = ipid_to_ifstub(ipid, &apt, &stubmgr, &ifstub);
    if (hr != S_OK) return RPC_E_DISCONNECTED;

    *stub = ifstub->stubbuffer;
    IRpcStubBuffer_AddRef(*stub);
    *chan = ifstub->chan;
    IRpcChannelBuffer_AddRef(*chan);
    *stub_apt = apt;
    *iid = ifstub->iid;
    *iface = ifstub->iface;

    if (manager)
        *manager = stubmgr;
    else
        stub_manager_int_release(stubmgr);
    return S_OK;
}
