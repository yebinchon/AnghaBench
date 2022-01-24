#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ set_param; } ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ left; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DataObject ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  DoDragDrop_effect_out ; 
 int /*<<< orphan*/  DoDragDrop_ret ; 
 int /*<<< orphan*/  DropSource ; 
 int /*<<< orphan*/  DropTarget ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SW_SHOW ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WS_EX_TOPMOST ; 
 TYPE_2__** call_lists ; 
 TYPE_2__* call_ptr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 

__attribute__((used)) static void FUNC14(void)
{
    DWORD effect;
    HRESULT hr;
    HWND hwnd;
    RECT rect;
    int seq;

    hwnd = FUNC1(WS_EX_TOPMOST, "WineOleTestClass", "Test", 0,
        CW_USEDEFAULT, CW_USEDEFAULT, 100, 100, NULL,
        NULL, NULL, NULL);
    FUNC12(FUNC5(hwnd), "failed to create window\n");

    hr = FUNC6(NULL);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC8(hwnd, &DropTarget);
    FUNC12(hr == S_OK, "got 0x%08x\n", hr);

    /* incomplete arguments set */
    hr = FUNC3(NULL, NULL, 0, NULL);
    FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC3(NULL, &DropSource, 0, NULL);
    FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC3(&DataObject, NULL, 0, NULL);
    FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC3(NULL, NULL, 0, &effect);
    FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC3(&DataObject, &DropSource, 0, NULL);
    FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC3(NULL, &DropSource, 0, &effect);
    FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = FUNC3(&DataObject, NULL, 0, &effect);
    FUNC12(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    FUNC10(hwnd, SW_SHOW);
    FUNC4(hwnd, &rect);
    FUNC12(FUNC9(rect.left+50, rect.top+50), "SetCursorPos failed\n");

    for (seq = 0; seq < FUNC0(call_lists); seq++)
    {
        DWORD effect_in;
        FUNC13("%d\n", seq);
        call_ptr = call_lists[seq];
        effect_in = call_ptr->set_param;
        call_ptr++;

        hr = FUNC3(&DataObject, &DropSource, effect_in, &effect);
        FUNC11(DoDragDrop_ret, hr, NULL);
        FUNC11(DoDragDrop_effect_out, effect, NULL);
    }

    FUNC7();

    FUNC2(hwnd);
}