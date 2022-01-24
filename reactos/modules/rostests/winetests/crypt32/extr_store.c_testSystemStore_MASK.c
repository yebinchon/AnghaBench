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
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ HCERTSTORE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BogusPathW ; 
 char const* BogusW ; 
 int /*<<< orphan*/  CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH ; 
 int CERT_STORE_CREATE_NEW_FLAG ; 
 int CERT_STORE_DELETE_FLAG ; 
 int CERT_STORE_OPEN_EXISTING_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 int /*<<< orphan*/  CERT_STORE_PROV_SYSTEM ; 
 int CERT_SYSTEM_STORE_CURRENT_USER ; 
 int CERT_SYSTEM_STORE_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ ERROR_FILE_EXISTS ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 char const* MyA ; 
 char const* MyW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const WCHAR baskslashW[] = { '\\',0 };
    HCERTSTORE store;
    WCHAR keyName[MAX_PATH];
    HKEY key;
    LONG rc;

    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0, 0, NULL);
    FUNC9(!store && FUNC3() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_LOCAL_MACHINE | CERT_SYSTEM_STORE_CURRENT_USER, MyA);
    FUNC9(!store && FUNC3() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_LOCAL_MACHINE | CERT_SYSTEM_STORE_CURRENT_USER, MyW);
    FUNC9(!store && FUNC3() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
    /* The name is expected to be UNICODE, first check with an ASCII name */
    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, MyA);
    FUNC9(!store && FUNC3() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
    /* Create the expected key */
    FUNC8(keyName, CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH);
    FUNC7(keyName, baskslashW);
    FUNC7(keyName, MyW);
    rc = FUNC5(HKEY_CURRENT_USER, keyName, 0, NULL, 0, KEY_READ,
     NULL, &key, NULL);
    FUNC9(!rc, "RegCreateKeyEx failed: %d\n", rc);
    if (!rc)
        FUNC4(key);
    /* Check opening with a UNICODE name, specifying the create new flag */
    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_CREATE_NEW_FLAG, MyW);
    FUNC9(!store && FUNC3() == ERROR_FILE_EXISTS,
     "Expected ERROR_FILE_EXISTS, got %08x\n", FUNC3());
    /* Now check opening with a UNICODE name, this time opening existing */
    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, MyW);
    FUNC9(store != 0, "CertOpenStore failed: %08x\n", FUNC3());
    if (store)
    {
        HCERTSTORE memStore = FUNC2(CERT_STORE_PROV_MEMORY, 0, 0,
         CERT_STORE_CREATE_NEW_FLAG, NULL);

        /* Check that it's a collection store */
        if (memStore)
        {
            BOOL ret = FUNC0(store, memStore, 0, 0);
            FUNC9(ret, "CertAddStoreToCollection failed: %08x\n", FUNC3());
            FUNC1(memStore, 0);
        }
        FUNC1(store, 0);
    }

    /* Check opening a bogus store */
    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, BogusW);
    FUNC9(!store, "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER, BogusW);
    FUNC9(store != 0, "CertOpenStore failed: %08x\n", FUNC3());
    if (store)
        FUNC1(store, 0);
    /* Now check whether deleting is allowed */
    store = FUNC2(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_DELETE_FLAG, BogusW);
    FUNC9(!store, "Didn't expect a store to be returned when deleting\n");
    FUNC6(HKEY_CURRENT_USER, BogusPathW);
}