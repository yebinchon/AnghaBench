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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IReferenceClock ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_SystemClock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IReferenceClock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
    IReferenceClock * pReferenceClock;
    HRESULT hr;

    hr = FUNC0(&CLSID_SystemClock, NULL, CLSCTX_INPROC_SERVER, &IID_IReferenceClock, (LPVOID*)&pReferenceClock);
    FUNC2(hr == S_OK, "Unable to create reference clock from system clock %x\n", hr);
    if (hr == S_OK)
    {
        FUNC4("SystemClock", pReferenceClock);
	FUNC3("SystemClock", pReferenceClock);
	FUNC1(pReferenceClock);
    }
}