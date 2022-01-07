
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_6__ {unsigned char* pbData; scalar_t__ cbData; } ;
typedef TYPE_1__ DATA_BLOB ;


 char const* GetLastError () ;
 int LocalFree (unsigned char*) ;
 scalar_t__ broken (int) ;
 int lstrlenA (char const*) ;
 int memcmp (char const*,char*,scalar_t__) ;
 int ok (int,char*,...) ;
 int pCryptProtectData (TYPE_1__*,scalar_t__*,int *,int *,int *,int ,TYPE_1__*) ;
 int pCryptUnprotectData (TYPE_1__*,int *,int *,int *,int *,int ,TYPE_1__*) ;
 scalar_t__ strlen (char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_simpleroundtrip(const char *plaintext)
{
    DATA_BLOB input;
    DATA_BLOB encrypted;
    DATA_BLOB output;
    int res;
    WCHAR emptyW[1];

    emptyW[0] = 0;
    input.pbData = (unsigned char *)plaintext;
    input.cbData = strlen(plaintext);
    res = pCryptProtectData(&input, emptyW, ((void*)0), ((void*)0), ((void*)0), 0, &encrypted);
    ok(res != 0 || broken(!res), "can't protect\n");
    if (!res)
    {

        win_skip("CryptProtectData failed\n");
        return;
    }

    res = pCryptUnprotectData(&encrypted, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, &output);
    ok(res != 0, "can't unprotect; last error %u\n", GetLastError());
    ok(output.cbData == strlen(plaintext), "output wrong length %d for input '%s', wanted %d\n", output.cbData, plaintext, lstrlenA(plaintext));
    ok(!memcmp(plaintext, (char *)output.pbData, output.cbData), "output wrong contents for input '%s'\n", plaintext);
    LocalFree(output.pbData);
    LocalFree(encrypted.pbData);
}
