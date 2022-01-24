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
typedef  int /*<<< orphan*/  originalGuid ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 scalar_t__ NTE_KEYSET_ENTRY_BAD ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  szKeySet ; 

__attribute__((used)) static void FUNC12(void)
{
   char originalGuid[40];
   LONG r;
   HKEY key;
   DWORD size;
   HCRYPTPROV hCryptProv;
   BOOL restoreGuid = FALSE, ret;

   r = FUNC3(HKEY_LOCAL_MACHINE, "Software\\Microsoft\\Cryptography",
                     0, KEY_ALL_ACCESS, &key);
   if (r != ERROR_SUCCESS)
   {
       FUNC10("couldn't open HKLM\\Software\\Microsoft\\Cryptography\n");
       return;
   }
   /* Cache existing MachineGuid, and delete it */
   size = sizeof(originalGuid);
   r = FUNC4(key, "MachineGuid", NULL, NULL, (BYTE *)originalGuid,
                        &size);
   if (r == ERROR_SUCCESS)
   {
       restoreGuid = TRUE;
       r = FUNC2(key, "MachineGuid");
       FUNC7(!r || FUNC6(r == ERROR_ACCESS_DENIED) /*win8*/, "RegDeleteValueA failed: %d\n", r);
       if (r == ERROR_ACCESS_DENIED)
       {
           FUNC10("broken virtualization on HKLM\\Software\\Microsoft\\Cryptography\n");
           FUNC1(key);
           return;
       }
   }
   else
       FUNC7(r == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n",
          r);
   /* Create and release a provider */
   ret = FUNC8(&hCryptProv, szKeySet, NULL, PROV_RSA_FULL, 0);
   FUNC7(ret || FUNC6(!ret && FUNC0() == NTE_KEYSET_ENTRY_BAD /* NT4 */),
      "CryptAcquireContextA failed: %08x\n", FUNC0());
   FUNC9(hCryptProv, 0);

   if (restoreGuid)
       FUNC5(key, "MachineGuid", 0, REG_SZ, (const BYTE *)originalGuid,
                      FUNC11(originalGuid)+1);
   FUNC1(key);
}