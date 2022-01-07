
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* encoded; int const* encodedNoNull; int info; int decoded; } ;
typedef size_t DWORD ;
typedef int CERT_PUBLIC_KEY_INFO ;
typedef int BYTE ;
typedef int BOOL ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 scalar_t__ CRYPT_E_ASN1_CORRUPT ;
 scalar_t__ GetLastError () ;
 int LocalFree (int*) ;
 scalar_t__ OSS_DATA_ERROR ;
 int X509_PUBLIC_KEY_INFO ;
 int comparePublicKeyInfo (int *,int *) ;
 int ok (int,char*,scalar_t__) ;
 int pCryptDecodeObjectEx (size_t,int ,int const*,int const,int ,int *,int**,size_t*) ;
 TYPE_1__* pubKeys ;

__attribute__((used)) static void test_decodePublicKeyInfo(DWORD dwEncoding)
{
    static const BYTE bogusPubKeyInfo[] = { 0x30, 0x22, 0x30, 0x0d, 0x06, 0x06,
     0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x01, 0x01, 0x01, 0x01, 0x03,
     0x11, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
     0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };
    DWORD i;
    BOOL ret;
    BYTE *buf = ((void*)0);
    DWORD bufSize = 0;

    for (i = 0; i < ARRAY_SIZE(pubKeys); i++)
    {

        ret = pCryptDecodeObjectEx(dwEncoding, X509_PUBLIC_KEY_INFO,
         pubKeys[i].encoded, pubKeys[i].encoded[1] + 2, CRYPT_DECODE_ALLOC_FLAG,
         ((void*)0), &buf, &bufSize);
        ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
        if (ret)
        {
            comparePublicKeyInfo(&pubKeys[i].decoded,
             (CERT_PUBLIC_KEY_INFO *)buf);
            LocalFree(buf);
        }

        ret = pCryptDecodeObjectEx(dwEncoding, X509_PUBLIC_KEY_INFO,
         pubKeys[i].encodedNoNull, pubKeys[i].encodedNoNull[1] + 2,
         CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &buf, &bufSize);
        ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
        if (ret)
        {
            comparePublicKeyInfo(&pubKeys[i].info, (CERT_PUBLIC_KEY_INFO *)buf);
            LocalFree(buf);
        }
    }

    ret = pCryptDecodeObjectEx(dwEncoding, X509_PUBLIC_KEY_INFO,
     bogusPubKeyInfo, bogusPubKeyInfo[1] + 2, CRYPT_DECODE_ALLOC_FLAG,
     ((void*)0), &buf, &bufSize);
    ok(!ret && (GetLastError() == CRYPT_E_ASN1_CORRUPT ||
     GetLastError() == OSS_DATA_ERROR ),
     "Expected CRYPT_E_ASN1_CORRUPT or OSS_DATA_ERROR, got %08x\n",
     GetLastError());
}
