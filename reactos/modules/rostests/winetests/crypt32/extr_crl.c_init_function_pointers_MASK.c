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
 void* pCertFindCRLInStore ; 
 void* pCertFindCertificateInCRL ; 
 void* pCertIsValidCRLForCertificate ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hdll = FUNC0("crypt32.dll");
    pCertFindCertificateInCRL = (void*)FUNC1(hdll, "CertFindCertificateInCRL");
    pCertFindCRLInStore = (void*)FUNC1(hdll, "CertFindCRLInStore");
    pCertIsValidCRLForCertificate = (void*)FUNC1(hdll, "CertIsValidCRLForCertificate");
}