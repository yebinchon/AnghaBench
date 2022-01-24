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
typedef  int /*<<< orphan*/  IInternetSession ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  protocol_cf ; 
 int /*<<< orphan*/  winetestW ; 

__attribute__((used)) static void FUNC5(void) {
    IInternetSession *session;
    HRESULT hr;

    hr = FUNC4(0, &session, 0);
    FUNC3(hr == S_OK, "CoInternetGetSession failed: 0x%08x\n", hr);
    if(FUNC0(hr))
        return;

    hr = FUNC2(session, &protocol_cf, winetestW);
    FUNC3(hr == S_OK, "UnregisterNameSpace failed: 0x%08x\n", hr);

    FUNC1(session);
}