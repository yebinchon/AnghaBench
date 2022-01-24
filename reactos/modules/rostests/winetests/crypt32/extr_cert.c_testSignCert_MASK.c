#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {scalar_t__ pszObjId; TYPE_1__ member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  cbData; int /*<<< orphan*/  pbData; } ;
typedef  scalar_t__ LPSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_2__ CRYPT_DATA_BLOB ;
typedef  TYPE_3__ CRYPT_ALGORITHM_IDENTIFIER ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ NTE_BAD_ALGID ; 
 scalar_t__ NTE_BAD_KEYSET ; 
 scalar_t__ NTE_NO_KEY ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC6(HCRYPTPROV csp, const CRYPT_DATA_BLOB *toBeSigned,
 LPCSTR sigOID, BYTE *sig, DWORD *sigLen)
{
    BOOL ret;
    DWORD size = 0;
    CRYPT_ALGORITHM_IDENTIFIER algoID = { NULL, { 0, NULL } };
    HCRYPTKEY key;

    /* These all crash
    ret = CryptSignCertificate(0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL);
    ret = CryptSignCertificate(0, 0, 0, NULL, 0, NULL, NULL, NULL, &size);
    ret = CryptSignCertificate(0, 0, 0, toBeSigned->pbData, toBeSigned->cbData,
     NULL, NULL, NULL, &size);
     */
    ret = FUNC2(0, 0, 0, toBeSigned->pbData, toBeSigned->cbData,
     &algoID, NULL, NULL, &size);
    FUNC4(!ret && FUNC3() == NTE_BAD_ALGID, 
     "Expected NTE_BAD_ALGID, got %08x\n", FUNC3());
    algoID.pszObjId = (LPSTR)sigOID;
    ret = FUNC2(0, 0, 0, toBeSigned->pbData, toBeSigned->cbData,
     &algoID, NULL, NULL, &size);
    FUNC4(!ret &&
     (FUNC3() == ERROR_INVALID_PARAMETER || FUNC3() == NTE_BAD_ALGID),
     "Expected ERROR_INVALID_PARAMETER or NTE_BAD_ALGID, got %08x\n",
     FUNC3());
    ret = FUNC2(0, AT_SIGNATURE, 0, toBeSigned->pbData,
     toBeSigned->cbData, &algoID, NULL, NULL, &size);
    FUNC4(!ret &&
     (FUNC3() == ERROR_INVALID_PARAMETER || FUNC3() == NTE_BAD_ALGID),
     "Expected ERROR_INVALID_PARAMETER or NTE_BAD_ALGID, got %08x\n",
     FUNC3());

    /* No keys exist in the new CSP yet.. */
    ret = FUNC2(csp, AT_SIGNATURE, 0, toBeSigned->pbData,
     toBeSigned->cbData, &algoID, NULL, NULL, &size);
    FUNC4(!ret && (FUNC3() == NTE_BAD_KEYSET || FUNC3() ==
     NTE_NO_KEY), "Expected NTE_BAD_KEYSET or NTE_NO_KEY, got %08x\n",
     FUNC3());
    ret = FUNC1(csp, AT_SIGNATURE, 0, &key);
    FUNC4(ret, "CryptGenKey failed: %08x\n", FUNC3());
    if (ret)
    {
        ret = FUNC2(csp, AT_SIGNATURE, 0, toBeSigned->pbData,
         toBeSigned->cbData, &algoID, NULL, NULL, &size);
        FUNC4(ret, "CryptSignCertificate failed: %08x\n", FUNC3());
        FUNC4(size <= *sigLen, "Expected size <= %d, got %d\n", *sigLen, size);
        if (ret)
        {
            ret = FUNC2(csp, AT_SIGNATURE, 0, toBeSigned->pbData,
             toBeSigned->cbData, &algoID, NULL, sig, &size);
            FUNC4(ret, "CryptSignCertificate failed: %08x\n", FUNC3());
            if (ret)
            {
                *sigLen = size;
                FUNC5(csp, toBeSigned->pbData, toBeSigned->cbData, sig,
                 size);
            }
        }
        FUNC0(key);
    }
}