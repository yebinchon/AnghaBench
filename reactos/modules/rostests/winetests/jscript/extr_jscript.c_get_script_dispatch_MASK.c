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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static IDispatchEx *FUNC4(IActiveScript *script)
{
    IDispatchEx *dispex;
    IDispatch *disp;
    HRESULT hres;

    disp = (void*)0xdeadbeef;
    hres = FUNC0(script, NULL, &disp);
    FUNC3(hres == S_OK, "GetScriptDispatch failed: %08x\n", hres);

    hres = FUNC1(disp, &IID_IDispatchEx, (void**)&dispex);
    FUNC2(disp);
    FUNC3(hres == S_OK, "Could not get IDispatch iface: %08x\n", hres);
    return dispex;
}