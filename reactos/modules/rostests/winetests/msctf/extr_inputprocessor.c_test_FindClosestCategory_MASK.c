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
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_FakeService ; 
 int /*<<< orphan*/  const GUID_NULL ; 
 int /*<<< orphan*/  const GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER ; 
 int /*<<< orphan*/  const GUID_TFCAT_TIP_HANDWRITING ; 
 int /*<<< orphan*/  const GUID_TFCAT_TIP_KEYBOARD ; 
 int /*<<< orphan*/  const GUID_TFCAT_TIP_SPEECH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_cm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    GUID output;
    HRESULT hr;
    const GUID *list[3] = {&GUID_TFCAT_TIP_SPEECH, &GUID_TFCAT_TIP_KEYBOARD, &GUID_TFCAT_TIP_HANDWRITING};

    hr = FUNC0(g_cm, &CLSID_FakeService, &output, NULL, 0);
    FUNC3(FUNC2(hr),"ITfCategoryMgr_FindClosestCategory failed (%x)\n",hr);
    FUNC3(FUNC1(&output,&GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER),"Wrong GUID\n");

    hr = FUNC0(g_cm, &CLSID_FakeService, &output, list, 1);
    FUNC3(FUNC2(hr),"ITfCategoryMgr_FindClosestCategory failed (%x)\n",hr);
    FUNC3(FUNC1(&output,&GUID_NULL),"Wrong GUID\n");

    hr = FUNC0(g_cm, &CLSID_FakeService, &output, list, 3);
    FUNC3(FUNC2(hr),"ITfCategoryMgr_FindClosestCategory failed (%x)\n",hr);
    FUNC3(FUNC1(&output,&GUID_TFCAT_TIP_KEYBOARD),"Wrong GUID\n");
}