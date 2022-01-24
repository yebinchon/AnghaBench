#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pszObjId; } ;
struct TYPE_7__ {TYPE_1__ Algorithm; } ;
typedef  TYPE_2__* PCERT_PUBLIC_KEY_INFO ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NTE_NO_KEY ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szOID_RSA_RSA ; 

__attribute__((used)) static void FUNC8(HCRYPTPROV csp, PCERT_PUBLIC_KEY_INFO *pInfo)
{
    BOOL ret;
    DWORD size = 0;
    HCRYPTKEY key;

    /* This crashes
    ret = CryptExportPublicKeyInfoEx(0, 0, 0, NULL, 0, NULL, NULL, NULL);
     */
    ret = FUNC1(0, 0, 0, NULL, 0, NULL, NULL, &size);
    FUNC6(!ret && FUNC3() == ERROR_INVALID_PARAMETER,
     "Expected ERROR_INVALID_PARAMETER, got %08x\n", FUNC3());
    ret = FUNC1(0, AT_SIGNATURE, 0, NULL, 0, NULL, NULL,
     &size);
    FUNC6(!ret && FUNC3() == ERROR_INVALID_PARAMETER,
     "Expected ERROR_INVALID_PARAMETER, got %08x\n", FUNC3());
    ret = FUNC1(0, 0, X509_ASN_ENCODING, NULL, 0, NULL,
     NULL, &size);
    FUNC6(!ret && FUNC3() == ERROR_INVALID_PARAMETER,
     "Expected ERROR_INVALID_PARAMETER, got %08x\n", FUNC3());
    ret = FUNC1(0, AT_SIGNATURE, X509_ASN_ENCODING, NULL,
     0, NULL, NULL, &size);
    FUNC6(!ret && FUNC3() == ERROR_INVALID_PARAMETER,
     "Expected ERROR_INVALID_PARAMETER, got %08x\n", FUNC3());
    /* Test with no key */
    ret = FUNC1(csp, AT_SIGNATURE, X509_ASN_ENCODING, NULL,
     0, NULL, NULL, &size);
    FUNC6(!ret && FUNC3() == NTE_NO_KEY, "Expected NTE_NO_KEY, got %08x\n",
     FUNC3());
    ret = FUNC2(csp, AT_SIGNATURE, 0, &key);
    FUNC6(ret, "CryptGenKey failed: %08x\n", FUNC3());
    if (ret)
    {
        ret = FUNC1(csp, AT_SIGNATURE, X509_ASN_ENCODING,
         NULL, 0, NULL, NULL, &size);
        FUNC6(ret, "CryptExportPublicKeyInfoEx failed: %08x\n", FUNC3());
        *pInfo = FUNC5(FUNC4(), 0, size);
        if (*pInfo)
        {
            ret = FUNC1(csp, AT_SIGNATURE,
             X509_ASN_ENCODING, NULL, 0, NULL, *pInfo, &size);
            FUNC6(ret, "CryptExportPublicKeyInfoEx failed: %08x\n",
             FUNC3());
            if (ret)
            {
                /* By default (we passed NULL as the OID) the OID is
                 * szOID_RSA_RSA.
                 */
                FUNC6(!FUNC7((*pInfo)->Algorithm.pszObjId, szOID_RSA_RSA),
                 "Expected %s, got %s\n", szOID_RSA_RSA,
                 (*pInfo)->Algorithm.pszObjId);
            }
        }
    }
    FUNC0(key);
}