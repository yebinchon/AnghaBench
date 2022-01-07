
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* encoded; int exts; } ;
typedef size_t DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CRYPT_ENCODE_ALLOC_FLAG ;
 int GetLastError () ;
 int LocalFree (int *) ;
 int X509_EXTENSIONS ;
 TYPE_1__* exts ;
 int memcmp (int *,size_t*,size_t) ;
 int ok (int,char*,...) ;
 scalar_t__ pCryptEncodeObjectEx (size_t,int ,int *,int ,int *,int **,size_t*) ;

__attribute__((used)) static void test_encodeExtensions(DWORD dwEncoding)
{
    DWORD i;

    for (i = 0; i < ARRAY_SIZE(exts); i++)
    {
        BOOL ret;
        BYTE *buf = ((void*)0);
        DWORD bufSize = 0;

        ret = pCryptEncodeObjectEx(dwEncoding, X509_EXTENSIONS, &exts[i].exts,
         CRYPT_ENCODE_ALLOC_FLAG, ((void*)0), &buf, &bufSize);
        ok(ret, "CryptEncodeObjectEx failed: %08x\n", GetLastError());
        if (ret)
        {
            ok(bufSize == exts[i].encoded[1] + 2,
             "Expected %d bytes, got %d\n", exts[i].encoded[1] + 2, bufSize);
            ok(!memcmp(buf, exts[i].encoded, exts[i].encoded[1] + 2),
             "Unexpected value\n");
            LocalFree(buf);
        }
    }
}
