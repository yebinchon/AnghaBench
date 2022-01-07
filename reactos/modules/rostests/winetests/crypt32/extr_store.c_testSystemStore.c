
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LONG ;
typedef int HKEY ;
typedef scalar_t__ HCERTSTORE ;
typedef int BOOL ;


 int BogusPathW ;
 char const* BogusW ;
 int CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_DELETE_FLAG ;
 int CERT_STORE_OPEN_EXISTING_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CERT_STORE_PROV_SYSTEM ;
 int CERT_SYSTEM_STORE_CURRENT_USER ;
 int CERT_SYSTEM_STORE_LOCAL_MACHINE ;
 int CertAddStoreToCollection (scalar_t__,scalar_t__,int ,int ) ;
 int CertCloseStore (scalar_t__,int ) ;
 scalar_t__ CertOpenStore (int ,int ,int ,int,char const*) ;
 scalar_t__ ERROR_FILE_EXISTS ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int MAX_PATH ;
 char const* MyA ;
 char const* MyW ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExW (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 int RegDeleteKeyW (int ,int ) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void testSystemStore(void)
{
    static const WCHAR baskslashW[] = { '\\',0 };
    HCERTSTORE store;
    WCHAR keyName[MAX_PATH];
    HKEY key;
    LONG rc;

    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0, 0, ((void*)0));
    ok(!store && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_LOCAL_MACHINE | CERT_SYSTEM_STORE_CURRENT_USER, MyA);
    ok(!store && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_LOCAL_MACHINE | CERT_SYSTEM_STORE_CURRENT_USER, MyW);
    ok(!store && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());

    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, MyA);
    ok(!store && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());

    lstrcpyW(keyName, CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH);
    lstrcatW(keyName, baskslashW);
    lstrcatW(keyName, MyW);
    rc = RegCreateKeyExW(HKEY_CURRENT_USER, keyName, 0, ((void*)0), 0, KEY_READ,
     ((void*)0), &key, ((void*)0));
    ok(!rc, "RegCreateKeyEx failed: %d\n", rc);
    if (!rc)
        RegCloseKey(key);

    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_CREATE_NEW_FLAG, MyW);
    ok(!store && GetLastError() == ERROR_FILE_EXISTS,
     "Expected ERROR_FILE_EXISTS, got %08x\n", GetLastError());

    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, MyW);
    ok(store != 0, "CertOpenStore failed: %08x\n", GetLastError());
    if (store)
    {
        HCERTSTORE memStore = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
         CERT_STORE_CREATE_NEW_FLAG, ((void*)0));


        if (memStore)
        {
            BOOL ret = CertAddStoreToCollection(store, memStore, 0, 0);
            ok(ret, "CertAddStoreToCollection failed: %08x\n", GetLastError());
            CertCloseStore(memStore, 0);
        }
        CertCloseStore(store, 0);
    }


    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, BogusW);
    ok(!store, "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER, BogusW);
    ok(store != 0, "CertOpenStore failed: %08x\n", GetLastError());
    if (store)
        CertCloseStore(store, 0);

    store = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_DELETE_FLAG, BogusW);
    ok(!store, "Didn't expect a store to be returned when deleting\n");
    RegDeleteKeyW(HKEY_CURRENT_USER, BogusPathW);
}
