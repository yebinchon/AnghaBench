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
typedef  scalar_t__ HCERTSTORE ;

/* Variables and functions */
 int /*<<< orphan*/  BogusPathW ; 
 int /*<<< orphan*/ * BogusW ; 
 int CERT_STORE_DELETE_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_SYSTEM ; 
 int CERT_SYSTEM_STORE_CURRENT_USER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    HCERTSTORE store;

    store = FUNC2(0, NULL);
    FUNC5(!store && FUNC3() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", FUNC3());
    /* This succeeds, and on WinXP at least, the Bogus key is created under
     * HKCU (but not under HKLM, even when run as an administrator.)
     */
    store = FUNC2(0, BogusW);
    FUNC5(store != 0, "CertOpenSystemStore failed: %08x\n", FUNC3());
    if (store)
        FUNC0(store, 0);
    /* Delete it so other tests succeed next time around */
    FUNC1(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_DELETE_FLAG, BogusW);
    FUNC4(HKEY_CURRENT_USER, BogusPathW);
}