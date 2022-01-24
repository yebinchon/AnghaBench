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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CallUIActivate_AfterShow ; 
 scalar_t__ CallUIActivate_None ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HideUI ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InPlaceUIWindow_SetActiveObject ; 
 int /*<<< orphan*/  OnUIDeactivate ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SetActiveObject_null ; 
 scalar_t__ call_UIActivate ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  view ; 

__attribute__((used)) static void FUNC4(void)
{
    HRESULT hres;

    if(call_UIActivate == CallUIActivate_AfterShow) {
        FUNC2(InPlaceUIWindow_SetActiveObject);
    }
    if(call_UIActivate != CallUIActivate_None) {
        FUNC2(SetActiveObject_null);
        FUNC2(HideUI);
        FUNC2(OnUIDeactivate);
    }

    hres = FUNC1(view, FALSE);
    FUNC3(hres == S_OK, "UIActivate failed: %08x\n", hres);

    if(call_UIActivate != CallUIActivate_None) {
        FUNC0(SetActiveObject_null);
        FUNC0(HideUI);
        FUNC0(OnUIDeactivate);
    }
    if(call_UIActivate == CallUIActivate_AfterShow) {
        FUNC0(InPlaceUIWindow_SetActiveObject);
    }
}