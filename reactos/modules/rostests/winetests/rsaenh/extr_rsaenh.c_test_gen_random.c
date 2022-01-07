
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rnd2 ;
typedef int rnd1 ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptGenRandom (int ,int,int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ NTE_FAIL ;
 int hProv ;
 int memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int ok (int ,char*,...) ;

__attribute__((used)) static void test_gen_random(void)
{
    BOOL result;
    BYTE rnd1[16], rnd2[16];

    memset(rnd1, 0, sizeof(rnd1));
    memset(rnd2, 0, sizeof(rnd2));

    result = CryptGenRandom(hProv, sizeof(rnd1), rnd1);
    if (!result && GetLastError() == NTE_FAIL) {

        return;
    }

    ok(result, "%08x\n", GetLastError());

    result = CryptGenRandom(hProv, sizeof(rnd2), rnd2);
    ok(result, "%08x\n", GetLastError());

    ok(memcmp(rnd1, rnd2, sizeof(rnd1)), "CryptGenRandom generates non random data\n");
}
