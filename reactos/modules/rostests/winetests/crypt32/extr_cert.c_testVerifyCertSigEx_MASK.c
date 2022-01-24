#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ cUnusedBits; int /*<<< orphan*/ * pbData; void* cbData; } ;
struct TYPE_11__ {scalar_t__ cbData; } ;
struct TYPE_12__ {TYPE_2__ Parameters; scalar_t__ pszObjId; } ;
struct TYPE_10__ {int cbData; int /*<<< orphan*/ * pbData; } ;
struct TYPE_15__ {TYPE_4__ Signature; TYPE_3__ SignatureAlgorithm; TYPE_1__ ToBeSigned; } ;
struct TYPE_14__ {int cbData; int /*<<< orphan*/ * pbData; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/ * PCERT_PUBLIC_KEY_INFO ;
typedef  scalar_t__ LPSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  void* DWORD ;
typedef  TYPE_5__ CRYPT_DATA_BLOB ;
typedef  TYPE_6__ CERT_SIGNED_CONTENT_INFO ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SIGNATURE ; 
 int /*<<< orphan*/  CRYPT_ENCODE_ALLOC_FLAG ; 
 scalar_t__ CRYPT_E_ASN1_BADTAG ; 
 scalar_t__ CRYPT_E_ASN1_EOD ; 
 int /*<<< orphan*/  CRYPT_VERIFY_CERT_SIGN_ISSUER_NULL ; 
 int /*<<< orphan*/  CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY ; 
 int /*<<< orphan*/  CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ STATUS_ACCESS_VIOLATION ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  X509_CERT ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void**) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(HCRYPTPROV csp, const CRYPT_DATA_BLOB *toBeSigned,
 LPCSTR sigOID, const BYTE *sig, DWORD sigLen)
{
    CERT_SIGNED_CONTENT_INFO info;
    LPBYTE cert = NULL;
    DWORD size = 0;
    BOOL ret;

    if (!&pCryptVerifyCertificateSignatureEx)
    {
        FUNC9("no CryptVerifyCertificateSignatureEx support\n");
        return;
    }
    if (!&pCryptEncodeObjectEx)
    {
        FUNC9("no CryptEncodeObjectEx support\n");
        return;
    }
    ret = FUNC8(0, 0, 0, NULL, 0, NULL, 0, NULL);
    FUNC6(!ret && FUNC1() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", FUNC1());
    ret = FUNC8(csp, 0, 0, NULL, 0, NULL, 0, NULL);
    FUNC6(!ret && FUNC1() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", FUNC1());
    ret = FUNC8(csp, X509_ASN_ENCODING, 0, NULL, 0,
     NULL, 0, NULL);
    FUNC6(!ret && FUNC1() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", FUNC1());
    /* This crashes
    ret = pCryptVerifyCertificateSignatureEx(csp, X509_ASN_ENCODING,
     CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, NULL, 0, NULL, 0, NULL);
     */
    info.ToBeSigned.cbData = toBeSigned->cbData;
    info.ToBeSigned.pbData = toBeSigned->pbData;
    info.SignatureAlgorithm.pszObjId = (LPSTR)sigOID;
    info.SignatureAlgorithm.Parameters.cbData = 0;
    info.Signature.cbData = sigLen;
    info.Signature.pbData = (BYTE *)sig;
    info.Signature.cUnusedBits = 0;
    ret = FUNC7(X509_ASN_ENCODING, X509_CERT, &info,
     CRYPT_ENCODE_ALLOC_FLAG, NULL, &cert, &size);
    FUNC6(ret, "CryptEncodeObjectEx failed: %08x\n", FUNC1());
    if (cert)
    {
        CRYPT_DATA_BLOB certBlob = { 0, NULL };
        PCERT_PUBLIC_KEY_INFO pubKeyInfo = NULL;

        ret = FUNC8(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob, 0, NULL, 0, NULL);
        FUNC6(!ret && FUNC1() == CRYPT_E_ASN1_EOD,
         "Expected CRYPT_E_ASN1_EOD, got %08x\n", FUNC1());
        certBlob.cbData = 1;
        certBlob.pbData = (void *)0xdeadbeef;
        ret = FUNC8(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob, 0, NULL, 0, NULL);
        FUNC6(!ret && (FUNC1() == STATUS_ACCESS_VIOLATION ||
                    FUNC1() == CRYPT_E_ASN1_EOD /* Win9x */ ||
                    FUNC1() == CRYPT_E_ASN1_BADTAG /* Win98 */),
         "Expected STATUS_ACCESS_VIOLATION, CRYPT_E_ASN1_EOD, OR CRYPT_E_ASN1_BADTAG, got %08x\n",
         FUNC1());

        certBlob.cbData = size;
        certBlob.pbData = cert;
        ret = FUNC8(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob, 0, NULL, 0, NULL);
        FUNC6(!ret && FUNC1() == E_INVALIDARG,
         "Expected E_INVALIDARG, got %08x\n", FUNC1());
        ret = FUNC8(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob,
         CRYPT_VERIFY_CERT_SIGN_ISSUER_NULL, NULL, 0, NULL);
        FUNC6(!ret && FUNC1() == E_INVALIDARG,
         "Expected E_INVALIDARG, got %08x\n", FUNC1());
        /* This crashes
        ret = pCryptVerifyCertificateSignatureEx(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob,
         CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY, NULL, 0, NULL);
         */
        FUNC0(csp, AT_SIGNATURE, X509_ASN_ENCODING,
         (LPSTR)sigOID, 0, NULL, NULL, &size);
        pubKeyInfo = FUNC3(FUNC2(), 0, size);
        if (pubKeyInfo)
        {
            ret = FUNC0(csp, AT_SIGNATURE,
             X509_ASN_ENCODING, (LPSTR)sigOID, 0, NULL, pubKeyInfo, &size);
            FUNC6(ret, "CryptExportKey failed: %08x\n", FUNC1());
            if (ret)
            {
                ret = FUNC8(csp, X509_ASN_ENCODING,
                 CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob,
                 CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY, pubKeyInfo, 0, NULL);
                FUNC6(ret, "CryptVerifyCertificateSignatureEx failed: %08x\n",
                 FUNC1());
            }
            FUNC4(FUNC2(), 0, pubKeyInfo);
        }
        FUNC5(cert);
    }
}