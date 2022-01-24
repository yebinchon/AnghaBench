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
typedef  void* PVOID ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 void* pAcceptSecurityContext ; 
 void* pAcquireCredentialsHandleA ; 
 void* pAcquireCredentialsHandleW ; 
 void* pCompleteAuthToken ; 
 void* pDecryptMessage ; 
 void* pDeleteSecurityContext ; 
 void* pEncryptMessage ; 
 void* pFreeContextBuffer ; 
 void* pFreeCredentialsHandle ; 
 void* pGetUserNameExA ; 
 void* pInitSecurityInterfaceA ; 
 void* pInitializeSecurityContextA ; 
 void* pMakeSignature ; 
 void* pQueryContextAttributesA ; 
 void* pQuerySecurityPackageInfoA ; 
 void* pVerifySignature ; 
 scalar_t__ secdll ; 

__attribute__((used)) static void FUNC2(void)
{
    secdll = FUNC1("secur32.dll");
    if(!secdll)
        secdll = FUNC1("security.dll");
    if(secdll)
    {
        pInitSecurityInterfaceA = (PVOID)FUNC0(secdll, "InitSecurityInterfaceA");
        pFreeContextBuffer = (PVOID)FUNC0(secdll, "FreeContextBuffer");
        pQuerySecurityPackageInfoA = (PVOID)FUNC0(secdll, "QuerySecurityPackageInfoA");
        pAcquireCredentialsHandleA = (PVOID)FUNC0(secdll, "AcquireCredentialsHandleA");
        pAcquireCredentialsHandleW = (void*)FUNC0(secdll, "AcquireCredentialsHandleW");
        pInitializeSecurityContextA = (PVOID)FUNC0(secdll, "InitializeSecurityContextA");
        pCompleteAuthToken = (PVOID)FUNC0(secdll, "CompleteAuthToken");
        pAcceptSecurityContext = (PVOID)FUNC0(secdll, "AcceptSecurityContext");
        pFreeCredentialsHandle = (PVOID)FUNC0(secdll, "FreeCredentialsHandle");
        pDeleteSecurityContext = (PVOID)FUNC0(secdll, "DeleteSecurityContext");
        pQueryContextAttributesA = (PVOID)FUNC0(secdll, "QueryContextAttributesA");
        pMakeSignature = (PVOID)FUNC0(secdll, "MakeSignature");
        pVerifySignature = (PVOID)FUNC0(secdll, "VerifySignature");
        pEncryptMessage = (PVOID)FUNC0(secdll, "EncryptMessage");
        pDecryptMessage = (PVOID)FUNC0(secdll, "DecryptMessage");
        pGetUserNameExA = (PVOID)FUNC0(secdll, "GetUserNameExA");
    }
}