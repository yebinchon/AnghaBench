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
typedef  int /*<<< orphan*/  INetFwPolicy2 ;
typedef  int /*<<< orphan*/  INetFwPolicy ;
typedef  int /*<<< orphan*/  INetFwMgr ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_NetFwMgr ; 
 int /*<<< orphan*/  CLSID_NetFwPolicy2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_INetFwMgr ; 
 int /*<<< orphan*/  IID_INetFwPolicy ; 
 int /*<<< orphan*/  IID_INetFwPolicy2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(void)
{
    INetFwMgr *manager;
    INetFwPolicy *policy;
    INetFwPolicy2 *policy2;
    HRESULT hr;

    hr = FUNC0(&CLSID_NetFwMgr, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_INetFwMgr, (void**)&manager);
    FUNC7(hr == S_OK, "NetFwMgr create failed: %08x\n", hr);

    hr = FUNC1(manager, &IID_INetFwPolicy, (void**)&policy);
    FUNC7(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    hr = FUNC1(manager, &IID_INetFwPolicy2, (void**)&policy2);
    FUNC7(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    hr = FUNC3(manager, &policy);
    FUNC7(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC5(policy, &IID_INetFwPolicy2, (void**)&policy2);
    FUNC7(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    FUNC6(policy);

    hr = FUNC0(&CLSID_NetFwPolicy2, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_INetFwPolicy2, (void**)&policy2);
    if(hr == S_OK)
    {
        FUNC8(policy2);

        FUNC4(policy2);
    }
    else
        FUNC9("NetFwPolicy2 object is not supported: %08x\n", hr);

    FUNC2(manager);
}