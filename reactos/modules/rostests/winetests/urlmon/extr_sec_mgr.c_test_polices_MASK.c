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
typedef  int /*<<< orphan*/  IInternetZoneManager ;
typedef  int /*<<< orphan*/  IInternetSecurityManager ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int URLACTION_ACTIVEX_OVERRIDE_OBJECT_SAFETY ; 
 int /*<<< orphan*/  URLACTION_ACTIVEX_OVERRIDE_SCRIPT_SAFETY ; 
 int URLACTION_ACTIVEX_RUN ; 
 int URLACTION_CHANNEL_SOFTDIST_PERMISSIONS ; 
 int /*<<< orphan*/  URLACTION_SCRIPT_OVERRIDE_SAFETY ; 
 int URLACTION_SCRIPT_RUN ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    IInternetZoneManager *zonemgr = NULL;
    IInternetSecurityManager *secmgr = NULL;
    HRESULT hres;

    FUNC8("testing polices...\n");

    hres = FUNC3(NULL, &secmgr, 0);
    FUNC2(hres == S_OK, "CoInternetCreateSecurityManager failed: %08x\n", hres);
    hres = FUNC4(NULL, &zonemgr, 0);
    FUNC2(hres == S_OK, "CoInternetCreateZoneManager failed: %08x\n", hres);

    FUNC7(secmgr, zonemgr, URLACTION_SCRIPT_RUN);
    FUNC7(secmgr, zonemgr, URLACTION_ACTIVEX_RUN);
    FUNC7(secmgr, zonemgr, URLACTION_ACTIVEX_OVERRIDE_OBJECT_SAFETY);
    FUNC7(secmgr, zonemgr, URLACTION_CHANNEL_SOFTDIST_PERMISSIONS);
    FUNC7(secmgr, zonemgr, 0xdeadbeef);

    FUNC6(secmgr, zonemgr, URLACTION_SCRIPT_OVERRIDE_SAFETY);
    FUNC6(secmgr, zonemgr, URLACTION_ACTIVEX_OVERRIDE_SCRIPT_SAFETY);

    FUNC5(secmgr);

    FUNC0(secmgr);
    FUNC1(zonemgr);
}