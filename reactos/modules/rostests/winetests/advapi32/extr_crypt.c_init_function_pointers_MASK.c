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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* pCryptAcquireContextA ; 
 void* pCryptContextAddRef ; 
 void* pCryptCreateHash ; 
 void* pCryptDecrypt ; 
 void* pCryptDeriveKey ; 
 void* pCryptDestroyHash ; 
 void* pCryptDestroyKey ; 
 void* pCryptDuplicateHash ; 
 void* pCryptDuplicateKey ; 
 void* pCryptEncrypt ; 
 void* pCryptEnumProviderTypesA ; 
 void* pCryptEnumProvidersA ; 
 void* pCryptExportKey ; 
 void* pCryptGenKey ; 
 void* pCryptGenRandom ; 
 void* pCryptGetDefaultProviderA ; 
 void* pCryptGetHashParam ; 
 void* pCryptGetKeyParam ; 
 void* pCryptGetProvParam ; 
 void* pCryptGetUserKey ; 
 void* pCryptHashData ; 
 void* pCryptHashSessionKey ; 
 void* pCryptImportKey ; 
 void* pCryptReleaseContext ; 
 void* pCryptSetHashParam ; 
 void* pCryptSetKeyParam ; 
 void* pCryptSetProvParam ; 
 void* pCryptSetProviderExA ; 
 void* pCryptSignHashW ; 
 void* pCryptVerifySignatureW ; 
 void* pSystemFunction004 ; 
 void* pSystemFunction005 ; 
 void* pSystemFunction036 ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hadvapi32 = FUNC0("advapi32.dll");

    pCryptAcquireContextA = (void*)FUNC1(hadvapi32, "CryptAcquireContextA");
    pCryptEnumProviderTypesA = (void*)FUNC1(hadvapi32, "CryptEnumProviderTypesA");
    pCryptEnumProvidersA = (void*)FUNC1(hadvapi32, "CryptEnumProvidersA");
    pCryptGetDefaultProviderA = (void*)FUNC1(hadvapi32, "CryptGetDefaultProviderA");
    pCryptReleaseContext = (void*)FUNC1(hadvapi32, "CryptReleaseContext");
    pCryptSetProviderExA = (void*)FUNC1(hadvapi32, "CryptSetProviderExA");
    pCryptCreateHash = (void*)FUNC1(hadvapi32, "CryptCreateHash");
    pCryptDestroyHash = (void*)FUNC1(hadvapi32, "CryptDestroyHash");
    pCryptGenRandom = (void*)FUNC1(hadvapi32, "CryptGenRandom");
    pCryptContextAddRef = (void*)FUNC1(hadvapi32, "CryptContextAddRef");
    pCryptGenKey = (void*)FUNC1(hadvapi32, "CryptGenKey");
    pCryptDestroyKey = (void*)FUNC1(hadvapi32, "CryptDestroyKey");
    pCryptDecrypt = (void*)FUNC1(hadvapi32, "CryptDecrypt");
    pCryptDeriveKey = (void*)FUNC1(hadvapi32, "CryptDeriveKey");
    pCryptDuplicateHash = (void*)FUNC1(hadvapi32, "CryptDuplicateHash");
    pCryptDuplicateKey = (void*)FUNC1(hadvapi32, "CryptDuplicateKey");
    pCryptEncrypt = (void*)FUNC1(hadvapi32, "CryptEncrypt");
    pCryptExportKey = (void*)FUNC1(hadvapi32, "CryptExportKey");
    pCryptGetHashParam = (void*)FUNC1(hadvapi32, "CryptGetHashParam");
    pCryptGetKeyParam = (void*)FUNC1(hadvapi32, "CryptGetKeyParam");
    pCryptGetProvParam = (void*)FUNC1(hadvapi32, "CryptGetProvParam");
    pCryptGetUserKey = (void*)FUNC1(hadvapi32, "CryptGetUserKey");
    pCryptHashData = (void*)FUNC1(hadvapi32, "CryptHashData");
    pCryptHashSessionKey = (void*)FUNC1(hadvapi32, "CryptHashSessionKey");
    pCryptImportKey = (void*)FUNC1(hadvapi32, "CryptImportKey");
    pCryptSignHashW = (void*)FUNC1(hadvapi32, "CryptSignHashW");
    pCryptSetHashParam = (void*)FUNC1(hadvapi32, "CryptSetHashParam");
    pCryptSetKeyParam = (void*)FUNC1(hadvapi32, "CryptSetKeyParam");
    pCryptSetProvParam = (void*)FUNC1(hadvapi32, "CryptSetProvParam");
    pCryptVerifySignatureW = (void*)FUNC1(hadvapi32, "CryptVerifySignatureW");
    pSystemFunction004 = (void*)FUNC1(hadvapi32, "SystemFunction004");
    pSystemFunction005 = (void*)FUNC1(hadvapi32, "SystemFunction005");
    pSystemFunction036 = (void*)FUNC1(hadvapi32, "SystemFunction036");
}