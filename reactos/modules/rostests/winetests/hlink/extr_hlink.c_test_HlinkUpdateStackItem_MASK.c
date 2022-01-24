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
typedef  char WCHAR ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  HBC_UpdateHlink ; 
 int /*<<< orphan*/  HLF_UpdateHlink ; 
 int /*<<< orphan*/  HLID_CURRENT ; 
 int /*<<< orphan*/  HlinkBrowseContext ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Moniker ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  testframe ; 

__attribute__((used)) static void FUNC4(void)
{
    static const WCHAR location[] = {'l','o','c','a','t','i','o','n',0};
    HRESULT hr;

    hr = FUNC1(NULL, NULL, HLID_CURRENT, &Moniker, location, NULL);
    FUNC3(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    FUNC2(HBC_UpdateHlink);
    hr = FUNC1(NULL, &HlinkBrowseContext, HLID_CURRENT, &Moniker, location, NULL);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);
    FUNC0(HBC_UpdateHlink);

    FUNC2(HLF_UpdateHlink);
    hr = FUNC1(&testframe, &HlinkBrowseContext, HLID_CURRENT, &Moniker, location, NULL);
    FUNC3(hr == S_OK, "got 0x%08x\n", hr);
    FUNC0(HLF_UpdateHlink);
}