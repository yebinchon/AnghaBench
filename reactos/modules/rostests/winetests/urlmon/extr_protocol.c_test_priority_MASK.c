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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  int /*<<< orphan*/  IInternetPriority ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IID_IInternetPriority ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(IInternetProtocol *protocol)
{
    IInternetPriority *priority;
    LONG pr;
    HRESULT hres;

    hres = FUNC4(protocol, &IID_IInternetPriority,
                                            (void**)&priority);
    FUNC5(hres == S_OK, "QueryInterface(IID_IInternetPriority) failed: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC1(priority, &pr);
    FUNC5(hres == S_OK, "GetPriority failed: %08x\n", hres);
    FUNC5(pr == 0, "pr=%d, expected 0\n", pr);

    hres = FUNC3(priority, 1);
    FUNC5(hres == S_OK, "SetPriority failed: %08x\n", hres);

    hres = FUNC1(priority, &pr);
    FUNC5(hres == S_OK, "GetPriority failed: %08x\n", hres);
    FUNC5(pr == 1, "pr=%d, expected 1\n", pr);

    FUNC2(priority);
}