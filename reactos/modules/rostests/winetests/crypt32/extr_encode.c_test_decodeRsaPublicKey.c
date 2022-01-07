
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int decodedModulusLen; int modulus; scalar_t__* encoded; } ;
struct TYPE_6__ {scalar_t__ bType; scalar_t__ bVersion; scalar_t__ reserved; scalar_t__ aiKeyAlg; } ;
struct TYPE_5__ {int magic; int bitlen; int pubexp; } ;
typedef TYPE_1__ RSAPUBKEY ;
typedef int * LPBYTE ;
typedef size_t DWORD ;
typedef int BOOL ;
typedef TYPE_2__ BLOBHEADER ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 scalar_t__ CALG_RSA_KEYX ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 scalar_t__ CRYPT_E_ASN1_EOD ;
 scalar_t__ CUR_BLOB_VERSION ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int LocalFree (int *) ;
 scalar_t__ OSS_MORE_INPUT ;
 scalar_t__ PUBLICKEYBLOB ;
 int RSA_CSP_PUBLICKEYBLOB ;
 int memcmp (int *,int ,int) ;
 int ok (int,char*,...) ;
 int pCryptDecodeObjectEx (size_t,int ,scalar_t__*,scalar_t__,int ,int *,int **,size_t*) ;
 TYPE_3__* rsaPubKeys ;
 int szOID_RSA_RSA ;
 int szOID_RSA_SHA1RSA ;

__attribute__((used)) static void test_decodeRsaPublicKey(DWORD dwEncoding)
{
    DWORD i;
    LPBYTE buf = ((void*)0);
    DWORD bufSize = 0;
    BOOL ret;


    ret = pCryptDecodeObjectEx(dwEncoding, RSA_CSP_PUBLICKEYBLOB,
     rsaPubKeys[0].encoded, rsaPubKeys[0].encoded[1],
     CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &buf, &bufSize);
    ok(!ret && (GetLastError() == CRYPT_E_ASN1_EOD ||
     GetLastError() == OSS_MORE_INPUT ),
     "Expected CRYPT_E_ASN1_EOD or OSS_MORE_INPUT, got %08x\n",
     GetLastError());

    ret = pCryptDecodeObjectEx(dwEncoding, szOID_RSA_RSA,
     rsaPubKeys[0].encoded, rsaPubKeys[0].encoded[1] + 2,
     CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &buf, &bufSize);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
    ret = pCryptDecodeObjectEx(dwEncoding, szOID_RSA_SHA1RSA,
     rsaPubKeys[0].encoded, rsaPubKeys[0].encoded[1] + 2,
     CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &buf, &bufSize);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());

    for (i = 0; i < ARRAY_SIZE(rsaPubKeys); i++)
    {
        bufSize = 0;
        ret = pCryptDecodeObjectEx(dwEncoding, RSA_CSP_PUBLICKEYBLOB,
         rsaPubKeys[i].encoded, rsaPubKeys[i].encoded[1] + 2,
         CRYPT_DECODE_ALLOC_FLAG, ((void*)0), &buf, &bufSize);
        ok(ret, "CryptDecodeObjectEx failed: %08x\n", GetLastError());
        if (ret)
        {
            BLOBHEADER *hdr = (BLOBHEADER *)buf;
            RSAPUBKEY *rsaPubKey = (RSAPUBKEY *)(buf + sizeof(BLOBHEADER));

            ok(bufSize >= sizeof(BLOBHEADER) + sizeof(RSAPUBKEY) +
             rsaPubKeys[i].decodedModulusLen,
             "Wrong size %d\n", bufSize);
            ok(hdr->bType == PUBLICKEYBLOB,
             "Expected type PUBLICKEYBLOB (%d), got %d\n", PUBLICKEYBLOB,
             hdr->bType);
            ok(hdr->bVersion == CUR_BLOB_VERSION,
             "Expected version CUR_BLOB_VERSION (%d), got %d\n",
             CUR_BLOB_VERSION, hdr->bVersion);
            ok(hdr->reserved == 0, "Expected reserved 0, got %d\n",
             hdr->reserved);
            ok(hdr->aiKeyAlg == CALG_RSA_KEYX,
             "Expected CALG_RSA_KEYX, got %08x\n", hdr->aiKeyAlg);
            ok(rsaPubKey->magic == 0x31415352,
             "Expected magic RSA1, got %08x\n", rsaPubKey->magic);
            ok(rsaPubKey->bitlen == rsaPubKeys[i].decodedModulusLen * 8,
             "Wrong bit len %d\n", rsaPubKey->bitlen);
            ok(rsaPubKey->pubexp == 65537, "Expected pubexp 65537, got %d\n",
             rsaPubKey->pubexp);
            ok(!memcmp(buf + sizeof(BLOBHEADER) + sizeof(RSAPUBKEY),
             rsaPubKeys[i].modulus, rsaPubKeys[i].decodedModulusLen),
             "Unexpected modulus\n");
            LocalFree(buf);
        }
    }
}
