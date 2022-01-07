
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ cUnusedBits; int * pbData; void* cbData; } ;
struct TYPE_11__ {scalar_t__ cbData; } ;
struct TYPE_12__ {TYPE_2__ Parameters; scalar_t__ pszObjId; } ;
struct TYPE_10__ {int cbData; int * pbData; } ;
struct TYPE_15__ {TYPE_4__ Signature; TYPE_3__ SignatureAlgorithm; TYPE_1__ ToBeSigned; } ;
struct TYPE_14__ {int cbData; int * pbData; int * member_1; int member_0; } ;
typedef int * PCERT_PUBLIC_KEY_INFO ;
typedef scalar_t__ LPSTR ;
typedef scalar_t__ LPCSTR ;
typedef int * LPBYTE ;
typedef int HCRYPTPROV ;
typedef void* DWORD ;
typedef TYPE_5__ CRYPT_DATA_BLOB ;
typedef TYPE_6__ CERT_SIGNED_CONTENT_INFO ;
typedef int BYTE ;
typedef int BOOL ;


 int AT_SIGNATURE ;
 int CRYPT_ENCODE_ALLOC_FLAG ;
 scalar_t__ CRYPT_E_ASN1_BADTAG ;
 scalar_t__ CRYPT_E_ASN1_EOD ;
 int CRYPT_VERIFY_CERT_SIGN_ISSUER_NULL ;
 int CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY ;
 int CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB ;
 int CryptExportPublicKeyInfoEx (int ,int ,int ,scalar_t__,int ,int *,int *,void**) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,void*) ;
 int HeapFree (int ,int ,int *) ;
 int LocalFree (int *) ;
 scalar_t__ STATUS_ACCESS_VIOLATION ;
 int X509_ASN_ENCODING ;
 int X509_CERT ;
 int ok (int,char*,scalar_t__) ;
 int pCryptEncodeObjectEx (int ,int ,TYPE_6__*,int ,int *,int **,void**) ;
 int pCryptVerifyCertificateSignatureEx (int ,int ,int ,TYPE_5__*,int ,int *,int ,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void testVerifyCertSigEx(HCRYPTPROV csp, const CRYPT_DATA_BLOB *toBeSigned,
 LPCSTR sigOID, const BYTE *sig, DWORD sigLen)
{
    CERT_SIGNED_CONTENT_INFO info;
    LPBYTE cert = ((void*)0);
    DWORD size = 0;
    BOOL ret;

    if (!pCryptVerifyCertificateSignatureEx)
    {
        win_skip("no CryptVerifyCertificateSignatureEx support\n");
        return;
    }
    if (!pCryptEncodeObjectEx)
    {
        win_skip("no CryptEncodeObjectEx support\n");
        return;
    }
    ret = pCryptVerifyCertificateSignatureEx(0, 0, 0, ((void*)0), 0, ((void*)0), 0, ((void*)0));
    ok(!ret && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", GetLastError());
    ret = pCryptVerifyCertificateSignatureEx(csp, 0, 0, ((void*)0), 0, ((void*)0), 0, ((void*)0));
    ok(!ret && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", GetLastError());
    ret = pCryptVerifyCertificateSignatureEx(csp, X509_ASN_ENCODING, 0, ((void*)0), 0,
     ((void*)0), 0, ((void*)0));
    ok(!ret && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", GetLastError());




    info.ToBeSigned.cbData = toBeSigned->cbData;
    info.ToBeSigned.pbData = toBeSigned->pbData;
    info.SignatureAlgorithm.pszObjId = (LPSTR)sigOID;
    info.SignatureAlgorithm.Parameters.cbData = 0;
    info.Signature.cbData = sigLen;
    info.Signature.pbData = (BYTE *)sig;
    info.Signature.cUnusedBits = 0;
    ret = pCryptEncodeObjectEx(X509_ASN_ENCODING, X509_CERT, &info,
     CRYPT_ENCODE_ALLOC_FLAG, ((void*)0), &cert, &size);
    ok(ret, "CryptEncodeObjectEx failed: %08x\n", GetLastError());
    if (cert)
    {
        CRYPT_DATA_BLOB certBlob = { 0, ((void*)0) };
        PCERT_PUBLIC_KEY_INFO pubKeyInfo = ((void*)0);

        ret = pCryptVerifyCertificateSignatureEx(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob, 0, ((void*)0), 0, ((void*)0));
        ok(!ret && GetLastError() == CRYPT_E_ASN1_EOD,
         "Expected CRYPT_E_ASN1_EOD, got %08x\n", GetLastError());
        certBlob.cbData = 1;
        certBlob.pbData = (void *)0xdeadbeef;
        ret = pCryptVerifyCertificateSignatureEx(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob, 0, ((void*)0), 0, ((void*)0));
        ok(!ret && (GetLastError() == STATUS_ACCESS_VIOLATION ||
                    GetLastError() == CRYPT_E_ASN1_EOD ||
                    GetLastError() == CRYPT_E_ASN1_BADTAG ),
         "Expected STATUS_ACCESS_VIOLATION, CRYPT_E_ASN1_EOD, OR CRYPT_E_ASN1_BADTAG, got %08x\n",
         GetLastError());

        certBlob.cbData = size;
        certBlob.pbData = cert;
        ret = pCryptVerifyCertificateSignatureEx(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob, 0, ((void*)0), 0, ((void*)0));
        ok(!ret && GetLastError() == E_INVALIDARG,
         "Expected E_INVALIDARG, got %08x\n", GetLastError());
        ret = pCryptVerifyCertificateSignatureEx(csp, X509_ASN_ENCODING,
         CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob,
         CRYPT_VERIFY_CERT_SIGN_ISSUER_NULL, ((void*)0), 0, ((void*)0));
        ok(!ret && GetLastError() == E_INVALIDARG,
         "Expected E_INVALIDARG, got %08x\n", GetLastError());





        CryptExportPublicKeyInfoEx(csp, AT_SIGNATURE, X509_ASN_ENCODING,
         (LPSTR)sigOID, 0, ((void*)0), ((void*)0), &size);
        pubKeyInfo = HeapAlloc(GetProcessHeap(), 0, size);
        if (pubKeyInfo)
        {
            ret = CryptExportPublicKeyInfoEx(csp, AT_SIGNATURE,
             X509_ASN_ENCODING, (LPSTR)sigOID, 0, ((void*)0), pubKeyInfo, &size);
            ok(ret, "CryptExportKey failed: %08x\n", GetLastError());
            if (ret)
            {
                ret = pCryptVerifyCertificateSignatureEx(csp, X509_ASN_ENCODING,
                 CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, &certBlob,
                 CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY, pubKeyInfo, 0, ((void*)0));
                ok(ret, "CryptVerifyCertificateSignatureEx failed: %08x\n",
                 GetLastError());
            }
            HeapFree(GetProcessHeap(), 0, pubKeyInfo);
        }
        LocalFree(cert);
    }
}
