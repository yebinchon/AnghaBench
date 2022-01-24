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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IObjectSafety ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IObjectSafety ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(IUnknown *unk, DWORD mask, DWORD opts)
{
    IObjectSafety *obj_safety;
    HRESULT hr;

    hr = FUNC2(unk, &IID_IObjectSafety, (void**)&obj_safety);
    FUNC3(hr == S_OK, "Could not get IObjectSafety iface: %08x\n", hr);

    hr = FUNC1(obj_safety, &IID_IDispatch, mask, mask&opts);
    FUNC3(hr == S_OK, "SetInterfaceSafetyOptions failed: %08x\n", hr);

    FUNC0(obj_safety);
}