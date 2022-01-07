
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HCERTSTORE ;
typedef int BOOL ;


 int BogusPathW ;
 int * BogusW ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_DELETE_FLAG ;
 int CERT_STORE_OPEN_EXISTING_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 int CERT_STORE_PROV_SYSTEM_REGISTRY ;
 int CERT_SYSTEM_STORE_CURRENT_USER ;
 int CERT_SYSTEM_STORE_LOCAL_MACHINE ;
 int CertAddStoreToCollection (scalar_t__,scalar_t__,int ,int ) ;
 int CertCloseStore (scalar_t__,int ) ;
 scalar_t__ CertOpenStore (int ,int ,int ,int,int *) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int HKEY_CURRENT_USER ;
 int * MyA ;
 int * MyW ;
 int RegDeleteKeyW (int ,int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void testSystemRegStore(void)
{
    HCERTSTORE store, memStore;


    store = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, MyW);



    if (!store)
        return;


    memStore = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0,
     CERT_STORE_CREATE_NEW_FLAG, ((void*)0));
    if (memStore)
    {
        BOOL ret = CertAddStoreToCollection(store, memStore, 0, 0);
        ok(!ret && GetLastError() == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", GetLastError());
        CertCloseStore(memStore, 0);
    }
    CertCloseStore(store, 0);


    store = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, BogusW);
    ok(!store && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
    store = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER, BogusW);
    ok(store != 0, "CertOpenStore failed: %08x\n", GetLastError());
    if (store)
        CertCloseStore(store, 0);

    store = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_DELETE_FLAG, BogusW);
    ok(!store, "CertOpenStore failed: %08x\n", GetLastError());
    RegDeleteKeyW(HKEY_CURRENT_USER, BogusPathW);

    store = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0, 0, ((void*)0));
    ok(!store && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", GetLastError());
    store = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_LOCAL_MACHINE | CERT_SYSTEM_STORE_CURRENT_USER, MyA);
    ok(!store && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", GetLastError());
    store = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_LOCAL_MACHINE | CERT_SYSTEM_STORE_CURRENT_USER, MyW);
    ok(!store && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", GetLastError());

    store = CertOpenStore(CERT_STORE_PROV_SYSTEM_REGISTRY, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_OPEN_EXISTING_FLAG, MyA);
    ok(!store && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
}
