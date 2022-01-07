
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HCERTSTORE ;


 int BogusPathW ;
 int * BogusW ;
 int CERT_STORE_DELETE_FLAG ;
 int CERT_STORE_PROV_SYSTEM ;
 int CERT_SYSTEM_STORE_CURRENT_USER ;
 int CertCloseStore (scalar_t__,int ) ;
 int CertOpenStore (int ,int ,int ,int,int *) ;
 scalar_t__ CertOpenSystemStoreW (int ,int *) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int HKEY_CURRENT_USER ;
 int RegDeleteKeyW (int ,int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void testCertOpenSystemStore(void)
{
    HCERTSTORE store;

    store = CertOpenSystemStoreW(0, ((void*)0));
    ok(!store && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", GetLastError());



    store = CertOpenSystemStoreW(0, BogusW);
    ok(store != 0, "CertOpenSystemStore failed: %08x\n", GetLastError());
    if (store)
        CertCloseStore(store, 0);

    CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0,
     CERT_SYSTEM_STORE_CURRENT_USER | CERT_STORE_DELETE_FLAG, BogusW);
    RegDeleteKeyW(HKEY_CURRENT_USER, BogusPathW);
}
