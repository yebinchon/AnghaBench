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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIFactory ;
typedef  int /*<<< orphan*/  nsIComponentRegistrar ;
typedef  int /*<<< orphan*/  nsIComponentManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIFactory ; 
 int /*<<< orphan*/  IID_nsIIOService ; 
 int /*<<< orphan*/  IID_nsINetUtil ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_IOSERVICE_CID ; 
 int /*<<< orphan*/  NS_IOSERVICE_CLASSNAME ; 
 int /*<<< orphan*/  NS_IOSERVICE_CONTRACTID ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_util ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsIOServiceFactory ; 
 int /*<<< orphan*/  nsio ; 

void FUNC10(nsIComponentManager *component_manager, nsIComponentRegistrar *registrar)
{
    nsIFactory *old_factory = NULL;
    nsresult nsres;

    nsres = FUNC3(component_manager, &NS_IOSERVICE_CID,
                                               &IID_nsIFactory, (void**)&old_factory);
    if(FUNC1(nsres)) {
        FUNC0("Could not get factory: %08x\n", nsres);
        return;
    }

    nsres = FUNC6(old_factory, NULL, &IID_nsIIOService, (void**)&nsio);
    if(FUNC1(nsres)) {
        FUNC0("Couldn not create nsIOService instance %08x\n", nsres);
        FUNC7(old_factory);
        return;
    }

    nsres = FUNC8(nsio, &IID_nsINetUtil, (void**)&net_util);
    if(FUNC1(nsres)) {
        FUNC2("Could not get nsINetUtil interface: %08x\n", nsres);
        FUNC9(nsio);
        return;
    }

    nsres = FUNC5(registrar, &NS_IOSERVICE_CID, old_factory);
    FUNC7(old_factory);
    if(FUNC1(nsres))
        FUNC0("UnregisterFactory failed: %08x\n", nsres);

    nsres = FUNC4(registrar, &NS_IOSERVICE_CID,
            NS_IOSERVICE_CLASSNAME, NS_IOSERVICE_CONTRACTID, &nsIOServiceFactory);
    if(FUNC1(nsres))
        FUNC0("RegisterFactory failed: %08x\n", nsres);
}