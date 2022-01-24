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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_FakeService ; 
 int /*<<< orphan*/  GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER ; 
 int /*<<< orphan*/  GUID_TFCAT_TIP_KEYBOARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_cm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hr;
    hr = FUNC0(g_cm, &CLSID_FakeService, &GUID_TFCAT_TIP_KEYBOARD, &CLSID_FakeService);
    FUNC2(FUNC1(hr),"ITfCategoryMgr_UnregisterCategory failed\n");
    hr = FUNC0(g_cm, &CLSID_FakeService, &GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER, &CLSID_FakeService);
    FUNC2(FUNC1(hr),"ITfCategoryMgr_UnregisterCategory failed\n");
}