
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* encoded; int info; } ;
typedef size_t DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CRYPT_ENCODE_ALLOC_FLAG ;
 scalar_t__ GetLastError () ;
 int LocalFree (int *) ;
 scalar_t__ OSS_BAD_PTR ;
 int X509_PUBLIC_KEY_INFO ;
 int memcmp (int *,size_t*,size_t) ;
 int ok (int,char*,...) ;
 scalar_t__ pCryptEncodeObjectEx (size_t,int ,int *,int ,int *,int **,size_t*) ;
 TYPE_1__* pubKeys ;

__attribute__((used)) static void test_encodePublicKeyInfo(DWORD dwEncoding)
{
    DWORD i;

    for (i = 0; i < ARRAY_SIZE(pubKeys); i++)
    {
        BOOL ret;
        BYTE *buf = ((void*)0);
        DWORD bufSize = 0;

        ret = pCryptEncodeObjectEx(dwEncoding, X509_PUBLIC_KEY_INFO,
         &pubKeys[i].info, CRYPT_ENCODE_ALLOC_FLAG, ((void*)0), &buf,
         &bufSize);
        ok(ret || GetLastError() == OSS_BAD_PTR ,
         "CryptEncodeObjectEx failed: %08x\n", GetLastError());
        if (ret)
        {
            ok(bufSize == pubKeys[i].encoded[1] + 2,
             "Expected %d bytes, got %d\n", pubKeys[i].encoded[1] + 2, bufSize);
            if (bufSize == pubKeys[i].encoded[1] + 2)
                ok(!memcmp(buf, pubKeys[i].encoded, pubKeys[i].encoded[1] + 2),
                 "Unexpected value\n");
            LocalFree(buf);
        }
    }
}
