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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BogusPathW ; 
 int /*<<< orphan*/ * BogusW ; 
 int CERT_STORE_CREATE_NEW_FLAG ; 
 int CERT_STORE_DELETE_FLAG ; 
 int CERT_STORE_OPEN_EXISTING_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int /*<<< orphan*/  CERT_STORE_PROV_SYSTEM_REGISTRY ; 
 int CERT_SYSTEM_STORE_CURRENT_USER ; 
 int CERT_SYSTEM_STORE_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/ * MyA ; 
 int /*<<< orphan*/ * MyW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    HCERTSTORE store, memStore;

    /* Check with a UNICODE name */
    store = FUNC2(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, MyW);
    /* Not all OSes support CERT_STORE_PROV_SYSTEM_REGISTRY, so don't continue
     * testing if they don't.
     */
    if (!store)
        return;

    /* Check that it isn't a collection store */
    memStore = FUNC2(CERT_STORE_PROV_MEMORY, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, NULL);
    if (memStore)
    {
        BOOL ret = FUNC0(store, memStore, 0, 0);
        FUNC5(!ret && FUNC3() == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", FUNC3());
        FUNC1(memStore, 0);
    }
    FUNC1(store, 0);

    /* Check opening a bogus store */
    store = FUNC2(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, BogusW);
    FUNC5(!store && FUNC3() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
    store = FUNC2(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER, BogusW);
    FUNC5(store != 0, "CertOpenStore failed: %08x\n", FUNC3());
    if (store)
        FUNC1(store, 0);
    /* Now check whether deleting is allowed */
    store = FUNC2(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_DELETE_FLAG, BogusW);
    FUNC5(!store, "CertOpenStore failed: %08x\n", FUNC3());
    FUNC4(HKEY_CURRENT_USER, BogusPathW);

    store = FUNC2(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0, 0, NULL);
    FUNC5(!store && FUNC3() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", FUNC3());
    store = FUNC2(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_LOCAL_MACHINE | CERT_SYSTEM_STORE_CURRENT_USER, MyA);
    FUNC5(!store && FUNC3() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", FUNC3());
    store = FUNC2(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_LOCAL_MACHINE | CERT_SYSTEM_STORE_CURRENT_USER, MyW);
    FUNC5(!store && FUNC3() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", FUNC3());
    /* The name is expected to be UNICODE, check with an ASCII name */
    store = FUNC2(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, MyA);
    FUNC5(!store && FUNC3() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
}