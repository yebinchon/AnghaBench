
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ cUnusedBits; int * pbData; scalar_t__ cbData; } ;
struct TYPE_10__ {scalar_t__ cbData; } ;
struct TYPE_11__ {TYPE_2__ Parameters; scalar_t__ pszObjId; } ;
struct TYPE_9__ {int pbData; int cbData; } ;
struct TYPE_14__ {TYPE_4__ Signature; TYPE_3__ SignatureAlgorithm; TYPE_1__ ToBeSigned; } ;
struct TYPE_13__ {int pbData; int cbData; } ;
typedef int * PCERT_PUBLIC_KEY_INFO ;
typedef scalar_t__ LPSTR ;
typedef scalar_t__ LPCSTR ;
typedef int * LPBYTE ;
typedef int HCRYPTPROV ;
typedef scalar_t__ DWORD ;
typedef TYPE_5__ CRYPT_DATA_BLOB ;
typedef TYPE_6__ CERT_SIGNED_CONTENT_INFO ;
typedef int BYTE ;
typedef int BOOL ;


 int AT_SIGNATURE ;
 int CRYPT_ENCODE_ALLOC_FLAG ;
 scalar_t__ CRYPT_E_ASN1_EOD ;
 int CryptExportPublicKeyInfoEx (int ,int ,int ,scalar_t__,int ,int *,int *,scalar_t__*) ;
 int CryptVerifyCertificateSignature (int ,int ,int *,scalar_t__,int *) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int LocalFree (int *) ;
 scalar_t__ OSS_BAD_ARG ;
 int X509_ASN_ENCODING ;
 int X509_CERT ;
 int ok (int,char*,scalar_t__) ;
 int pCryptEncodeObjectEx (int ,int ,TYPE_6__*,int ,int *,int **,scalar_t__*) ;
 int win_skip (char*) ;

__attribute__((used)) static void testVerifyCertSig(HCRYPTPROV csp, const CRYPT_DATA_BLOB *toBeSigned,
 LPCSTR sigOID, const BYTE *sig, DWORD sigLen)
{
    CERT_SIGNED_CONTENT_INFO info;
    LPBYTE cert = ((void*)0);
    DWORD size = 0;
    BOOL ret;

    if (!pCryptEncodeObjectEx)
    {
        win_skip("no CryptEncodeObjectEx support\n");
        return;
    }
    ret = CryptVerifyCertificateSignature(0, 0, ((void*)0), 0, ((void*)0));
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
    ret = CryptVerifyCertificateSignature(csp, 0, ((void*)0), 0, ((void*)0));
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
    ret = CryptVerifyCertificateSignature(csp, X509_ASN_ENCODING, ((void*)0), 0,
     ((void*)0));
    ok(!ret && (GetLastError() == CRYPT_E_ASN1_EOD ||
     GetLastError() == OSS_BAD_ARG),
     "Expected CRYPT_E_ASN1_EOD or OSS_BAD_ARG, got %08x\n", GetLastError());
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
        PCERT_PUBLIC_KEY_INFO pubKeyInfo = ((void*)0);
        DWORD pubKeySize;

        if (0)
        {

            ret = CryptVerifyCertificateSignature(csp, X509_ASN_ENCODING,
             cert, size, ((void*)0));
        }
        CryptExportPublicKeyInfoEx(csp, AT_SIGNATURE, X509_ASN_ENCODING,
         (LPSTR)sigOID, 0, ((void*)0), ((void*)0), &pubKeySize);
        pubKeyInfo = HeapAlloc(GetProcessHeap(), 0, pubKeySize);
        if (pubKeyInfo)
        {
            ret = CryptExportPublicKeyInfoEx(csp, AT_SIGNATURE,
             X509_ASN_ENCODING, (LPSTR)sigOID, 0, ((void*)0), pubKeyInfo,
             &pubKeySize);
            ok(ret, "CryptExportKey failed: %08x\n", GetLastError());
            if (ret)
            {
                ret = CryptVerifyCertificateSignature(csp, X509_ASN_ENCODING,
                 cert, size, pubKeyInfo);
                ok(ret, "CryptVerifyCertificateSignature failed: %08x\n",
                 GetLastError());
            }
            HeapFree(GetProcessHeap(), 0, pubKeyInfo);
        }
        LocalFree(cert);
    }
}
