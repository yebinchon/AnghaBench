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
typedef  int /*<<< orphan*/  IInternetSession ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  protocol_cf ; 

__attribute__((used)) static void FUNC5(void)
{
    IInternetSession *session;
    HRESULT hres;

    static const WCHAR winetestW[] = {'w','i','n','e','t','e','s','t',0};

    hres = FUNC0(0, &session, 0);
    FUNC4(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    hres = FUNC2(session, &protocol_cf, &IID_NULL,
            winetestW, 0, NULL, 0);
    FUNC4(hres == S_OK, "RegisterNameSpace failed: %08x\n", hres);

    FUNC3(session);
}