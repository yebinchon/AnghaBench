#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proxy_manager {int /*<<< orphan*/  cs; int /*<<< orphan*/  interfaces; int /*<<< orphan*/  IMultiQI_iface; } ;
struct TYPE_3__ {int /*<<< orphan*/  cPublicRefs; int /*<<< orphan*/  ipid; } ;
struct ifproxy {int /*<<< orphan*/  entry; int /*<<< orphan*/ * chan; int /*<<< orphan*/ * proxy; int /*<<< orphan*/ * iface; scalar_t__ refs; int /*<<< orphan*/  iid; TYPE_1__ stdobjref; struct proxy_manager* parent; } ;
typedef  TYPE_1__ STDOBJREF ;
typedef  int /*<<< orphan*/ * REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IRpcChannelBuffer ;
typedef  int /*<<< orphan*/  IPSFactoryBuffer ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct ifproxy* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (char*,struct ifproxy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (struct ifproxy*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC17(
    struct proxy_manager * This, const STDOBJREF *stdobjref, REFIID riid,
    IRpcChannelBuffer * channel, struct ifproxy ** iif_out)
{
    HRESULT hr;
    IPSFactoryBuffer * psfb;
    struct ifproxy * ifproxy = FUNC3(FUNC2(), 0, sizeof(*ifproxy));
    if (!ifproxy) return E_OUTOFMEMORY;

    FUNC16(&ifproxy->entry);

    ifproxy->parent = This;
    ifproxy->stdobjref = *stdobjref;
    ifproxy->iid = *riid;
    ifproxy->refs = 0;
    ifproxy->proxy = NULL;

    FUNC11(channel);
    ifproxy->chan = channel; /* FIXME: we should take the binding strings and construct the channel in this function */

    /* the IUnknown interface is special because it does not have a
     * proxy associated with the ifproxy as we handle IUnknown ourselves */
    if (FUNC8(riid, &IID_IUnknown))
    {
        ifproxy->iface = &This->IMultiQI_iface;
        FUNC4(&This->IMultiQI_iface);
        hr = S_OK;
    }
    else
    {
        hr = FUNC13(riid, &psfb);
        if (hr == S_OK)
        {
            /* important note: the outer unknown is set to the proxy manager.
             * This ensures the COM identity rules are not violated, by having a
             * one-to-one mapping of objects on the proxy side to objects on the
             * stub side, no matter which interface you view the object through */
            hr = FUNC5(psfb, (IUnknown*)&This->IMultiQI_iface, riid,
                                              &ifproxy->proxy, &ifproxy->iface);
            FUNC6(psfb);
            if (hr != S_OK)
                FUNC0("Could not create proxy for interface %s, error 0x%08x\n",
                    FUNC12(riid), hr);
        }
        else
            FUNC0("Could not get IPSFactoryBuffer for interface %s, error 0x%08x\n",
                FUNC12(riid), hr);

        if (hr == S_OK)
            hr = FUNC7(ifproxy->proxy, ifproxy->chan);
    }

    if (hr == S_OK)
    {
        FUNC1(&This->cs);
        FUNC15(&This->interfaces, &ifproxy->entry);
        FUNC9(&This->cs);

        *iif_out = ifproxy;
        FUNC10("ifproxy %p created for IPID %s, interface %s with %u public refs\n",
              ifproxy, FUNC12(&stdobjref->ipid), FUNC12(riid), stdobjref->cPublicRefs);
    }
    else
        FUNC14(ifproxy);

    return hr;
}