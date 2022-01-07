
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proxy_manager {int cs; int interfaces; int IMultiQI_iface; } ;
struct TYPE_3__ {int cPublicRefs; int ipid; } ;
struct ifproxy {int entry; int * chan; int * proxy; int * iface; scalar_t__ refs; int iid; TYPE_1__ stdobjref; struct proxy_manager* parent; } ;
typedef TYPE_1__ STDOBJREF ;
typedef int * REFIID ;
typedef int IUnknown ;
typedef int IRpcChannelBuffer ;
typedef int IPSFactoryBuffer ;
typedef scalar_t__ HRESULT ;


 int ERR (char*,int ,scalar_t__) ;
 scalar_t__ E_OUTOFMEMORY ;
 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 struct ifproxy* HeapAlloc (int ,int ,int) ;
 int IID_IUnknown ;
 int IMultiQI_AddRef (int *) ;
 scalar_t__ IPSFactoryBuffer_CreateProxy (int *,int *,int *,int **,int **) ;
 int IPSFactoryBuffer_Release (int *) ;
 scalar_t__ IRpcProxyBuffer_Connect (int *,int *) ;
 scalar_t__ IsEqualIID (int *,int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ S_OK ;
 int TRACE (char*,struct ifproxy*,int ,int ,int ) ;
 int assert (int *) ;
 int debugstr_guid (int *) ;
 scalar_t__ get_facbuf_for_iid (int *,int **) ;
 int ifproxy_destroy (struct ifproxy*) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;

__attribute__((used)) static HRESULT proxy_manager_create_ifproxy(
    struct proxy_manager * This, const STDOBJREF *stdobjref, REFIID riid,
    IRpcChannelBuffer * channel, struct ifproxy ** iif_out)
{
    HRESULT hr;
    IPSFactoryBuffer * psfb;
    struct ifproxy * ifproxy = HeapAlloc(GetProcessHeap(), 0, sizeof(*ifproxy));
    if (!ifproxy) return E_OUTOFMEMORY;

    list_init(&ifproxy->entry);

    ifproxy->parent = This;
    ifproxy->stdobjref = *stdobjref;
    ifproxy->iid = *riid;
    ifproxy->refs = 0;
    ifproxy->proxy = ((void*)0);

    assert(channel);
    ifproxy->chan = channel;



    if (IsEqualIID(riid, &IID_IUnknown))
    {
        ifproxy->iface = &This->IMultiQI_iface;
        IMultiQI_AddRef(&This->IMultiQI_iface);
        hr = S_OK;
    }
    else
    {
        hr = get_facbuf_for_iid(riid, &psfb);
        if (hr == S_OK)
        {




            hr = IPSFactoryBuffer_CreateProxy(psfb, (IUnknown*)&This->IMultiQI_iface, riid,
                                              &ifproxy->proxy, &ifproxy->iface);
            IPSFactoryBuffer_Release(psfb);
            if (hr != S_OK)
                ERR("Could not create proxy for interface %s, error 0x%08x\n",
                    debugstr_guid(riid), hr);
        }
        else
            ERR("Could not get IPSFactoryBuffer for interface %s, error 0x%08x\n",
                debugstr_guid(riid), hr);

        if (hr == S_OK)
            hr = IRpcProxyBuffer_Connect(ifproxy->proxy, ifproxy->chan);
    }

    if (hr == S_OK)
    {
        EnterCriticalSection(&This->cs);
        list_add_tail(&This->interfaces, &ifproxy->entry);
        LeaveCriticalSection(&This->cs);

        *iif_out = ifproxy;
        TRACE("ifproxy %p created for IPID %s, interface %s with %u public refs\n",
              ifproxy, debugstr_guid(&stdobjref->ipid), debugstr_guid(riid), stdobjref->cPublicRefs);
    }
    else
        ifproxy_destroy(ifproxy);

    return hr;
}
