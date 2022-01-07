
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int len ;
typedef int ULONG ;
typedef int UCHAR ;
typedef scalar_t__ NTSTATUS ;
typedef int * BCRYPT_ALG_HANDLE ;


 int BCRYPT_OBJECT_LENGTH ;
 int BCRYPT_RNG_ALGORITHM ;
 scalar_t__ BCryptCloseAlgorithmProvider (int *,int ) ;
 scalar_t__ BCryptGenRandom (int *,int *,int,int ) ;
 scalar_t__ BCryptGetProperty (int *,int ,int *,int,int*,int ) ;
 scalar_t__ BCryptOpenAlgorithmProvider (int **,int ,int ,int ) ;
 int MS_PRIMITIVE_PROVIDER ;
 scalar_t__ STATUS_NOT_SUPPORTED ;
 scalar_t__ STATUS_SUCCESS ;
 int memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,...) ;
 int test_alg_name (int *,char*) ;

__attribute__((used)) static void test_rng(void)
{
    BCRYPT_ALG_HANDLE alg;
    ULONG size, len;
    UCHAR buf[16];
    NTSTATUS ret;

    alg = ((void*)0);
    ret = BCryptOpenAlgorithmProvider(&alg, BCRYPT_RNG_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(alg != ((void*)0), "alg not set\n");

    len = size = 0xdeadbeef;
    ret = BCryptGetProperty(alg, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len, sizeof(len), &size, 0);
    ok(ret == STATUS_NOT_SUPPORTED, "got %08x\n", ret);

    test_alg_name(alg, "RNG");

    memset(buf, 0, 16);
    ret = BCryptGenRandom(alg, buf, 8, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(memcmp(buf, buf + 8, 8), "got zeroes\n");

    ret = BCryptCloseAlgorithmProvider(alg, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
}
