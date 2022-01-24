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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_NewMenu ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IContextMenu ; 
 int /*<<< orphan*/  IID_IContextMenu2 ; 
 int /*<<< orphan*/  IID_IContextMenu3 ; 
 int /*<<< orphan*/  IID_IObjectWithSite ; 
 int /*<<< orphan*/  IID_IShellExtInit ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    IUnknown *unk, *unk2;
    HRESULT hr;

    hr = FUNC0(&CLSID_NewMenu, NULL, CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&unk);
    FUNC3(hr == S_OK, "Failed to create NewMenu object, hr %#x.\n", hr);
    if (hr != S_OK)
    {
        FUNC4("NewMenu is not supported.\n");
        return;
    }

    hr = FUNC1(unk, &IID_IShellExtInit, (void **)&unk2);
    FUNC3(hr == S_OK, "Failed to get IShellExtInit, hr %#x.\n", hr);
    FUNC2(unk2);

    hr = FUNC1(unk, &IID_IContextMenu, (void **)&unk2);
    FUNC3(hr == S_OK, "Failed to get IContextMenu, hr %#x.\n", hr);
    FUNC2(unk2);

    hr = FUNC1(unk, &IID_IContextMenu2, (void **)&unk2);
    FUNC3(hr == S_OK, "Failed to get IContextMenu2, hr %#x.\n", hr);
    FUNC2(unk2);

    hr = FUNC1(unk, &IID_IContextMenu3, (void **)&unk2);
    FUNC3(hr == S_OK, "Failed to get IContextMenu3, hr %#x.\n", hr);
    FUNC2(unk2);

    hr = FUNC1(unk, &IID_IObjectWithSite, (void **)&unk2);
    FUNC3(hr == S_OK, "Failed to get IObjectWithSite, hr %#x.\n", hr);
    FUNC2(unk2);

    FUNC2(unk);
}