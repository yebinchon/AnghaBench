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
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  protocol_cf ; 
 int /*<<< orphan*/  winetestW ; 

__attribute__((used)) static void FUNC5(void)
{
    IInternetSession *session;
    HRESULT hres;

    hres = FUNC4(0, &session, 0);
    FUNC3(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC1(session, &protocol_cf, &IID_NULL,
            winetestW, 0, NULL, 0);
    FUNC3(hres == S_OK, "RegisterNameSpace failed: %08x\n", hres);

    FUNC2(session);
}