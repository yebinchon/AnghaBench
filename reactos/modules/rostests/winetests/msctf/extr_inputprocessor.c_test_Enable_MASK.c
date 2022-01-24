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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_FakeService ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  gLangid ; 
 int /*<<< orphan*/  g_ipp ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    HRESULT hr;
    BOOL enabled = FALSE;

    hr = FUNC0(g_ipp,&CLSID_FakeService, gLangid, &CLSID_FakeService, TRUE);
    FUNC3(FUNC2(hr),"Failed to enable text service\n");
    hr = FUNC1(g_ipp,&CLSID_FakeService, gLangid, &CLSID_FakeService, &enabled);
    FUNC3(FUNC2(hr),"Failed to get enabled state\n");
    FUNC3(enabled == TRUE,"enabled state incorrect\n");
}