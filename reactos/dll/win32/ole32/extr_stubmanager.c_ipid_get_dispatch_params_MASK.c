#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stub_manager {int dummy; } ;
struct ifstub {int /*<<< orphan*/ * iface; int /*<<< orphan*/  iid; int /*<<< orphan*/ * chan; int /*<<< orphan*/ * stubbuffer; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IRpcStubBuffer ;
typedef  int /*<<< orphan*/  IRpcChannelBuffer ;
typedef  int /*<<< orphan*/  IPID ;
typedef  int /*<<< orphan*/  IID ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  APARTMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ RPC_E_DISCONNECTED ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **,struct stub_manager**,struct ifstub**) ; 
 int /*<<< orphan*/  FUNC3 (struct stub_manager*) ; 

HRESULT FUNC4(const IPID *ipid, APARTMENT **stub_apt,
                                 struct stub_manager **manager,
                                 IRpcStubBuffer **stub, IRpcChannelBuffer **chan,
                                 IID *iid, IUnknown **iface)
{
    struct stub_manager *stubmgr;
    struct ifstub *ifstub;
    APARTMENT *apt;
    HRESULT hr;

    hr = FUNC2(ipid, &apt, &stubmgr, &ifstub);
    if (hr != S_OK) return RPC_E_DISCONNECTED;

    *stub = ifstub->stubbuffer;
    FUNC1(*stub);
    *chan = ifstub->chan;
    FUNC0(*chan);
    *stub_apt = apt;
    *iid = ifstub->iid;
    *iface = ifstub->iface;

    if (manager)
        *manager = stubmgr;
    else
        FUNC3(stubmgr);
    return S_OK;
}