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
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static IDispatchEx *FUNC5(IActiveScript *script)
{
    IDispatchEx *dispex;
    IDispatch *disp;
    HRESULT hres;

    disp = (void*)0xdeadbeef;
    hres = FUNC1(script, NULL, &disp);
    FUNC4(hres == S_OK, "GetScriptDispatch failed: %08x\n", hres);
    if(FUNC0(hres))
        return NULL;

    hres = FUNC2(disp, &IID_IDispatchEx, (void**)&dispex);
    FUNC3(disp);
    FUNC4(hres == S_OK, "Could not get IDispatchEx iface: %08x\n", hres);
    return dispex;
}