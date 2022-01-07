
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int originalGuid ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int HCRYPTPROV ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ALL_ACCESS ;
 scalar_t__ NTE_KEYSET_ENTRY_BAD ;
 int PROV_RSA_FULL ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegDeleteValueA (int ,char*) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,int *,int *,int*) ;
 int RegSetValueExA (int ,char*,int ,int ,int const*,scalar_t__) ;
 scalar_t__ TRUE ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCryptAcquireContextA (int *,int ,int *,int ,int ) ;
 int pCryptReleaseContext (int ,int ) ;
 int skip (char*) ;
 scalar_t__ strlen (char*) ;
 int szKeySet ;

__attribute__((used)) static void test_machine_guid(void)
{
   char originalGuid[40];
   LONG r;
   HKEY key;
   DWORD size;
   HCRYPTPROV hCryptProv;
   BOOL restoreGuid = FALSE, ret;

   r = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Cryptography",
                     0, KEY_ALL_ACCESS, &key);
   if (r != ERROR_SUCCESS)
   {
       skip("couldn't open HKLM\\Software\\Microsoft\\Cryptography\n");
       return;
   }

   size = sizeof(originalGuid);
   r = RegQueryValueExA(key, "MachineGuid", ((void*)0), ((void*)0), (BYTE *)originalGuid,
                        &size);
   if (r == ERROR_SUCCESS)
   {
       restoreGuid = TRUE;
       r = RegDeleteValueA(key, "MachineGuid");
       ok(!r || broken(r == ERROR_ACCESS_DENIED) , "RegDeleteValueA failed: %d\n", r);
       if (r == ERROR_ACCESS_DENIED)
       {
           skip("broken virtualization on HKLM\\Software\\Microsoft\\Cryptography\n");
           RegCloseKey(key);
           return;
       }
   }
   else
       ok(r == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n",
          r);

   ret = pCryptAcquireContextA(&hCryptProv, szKeySet, ((void*)0), PROV_RSA_FULL, 0);
   ok(ret || broken(!ret && GetLastError() == NTE_KEYSET_ENTRY_BAD ),
      "CryptAcquireContextA failed: %08x\n", GetLastError());
   pCryptReleaseContext(hCryptProv, 0);

   if (restoreGuid)
       RegSetValueExA(key, "MachineGuid", 0, REG_SZ, (const BYTE *)originalGuid,
                      strlen(originalGuid)+1);
   RegCloseKey(key);
}
