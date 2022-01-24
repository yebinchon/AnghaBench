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
typedef  int /*<<< orphan*/  ITfInputProcessorProfileMgr ;
typedef  int /*<<< orphan*/  IEnumTfInputProcessorProfiles ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ITfInputProcessorProfileMgr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  g_ipp ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    IEnumTfInputProcessorProfiles *enum_profiles;
    ITfInputProcessorProfileMgr *ipp_mgr;
    HRESULT hres;

    hres = FUNC3(g_ipp, &IID_ITfInputProcessorProfileMgr, (void**)&ipp_mgr);
    if (hres != S_OK)
    {
        FUNC5("ITfInputProcessorProfileMgr is not supported.\n");
        return;
    }
    FUNC4(hres == S_OK, "Could not get ITfInputProcessorProfileMgr iface: %08x\n", hres);

    hres = FUNC1(ipp_mgr, 0, &enum_profiles);
    FUNC4(hres == S_OK, "EnumProfiles failed: %08x\n", hres);

    FUNC0(enum_profiles);

    FUNC2(ipp_mgr);
}