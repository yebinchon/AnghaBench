
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md5_hmac ;
typedef int md5 ;
typedef int UCHAR ;
typedef char* NTSTATUS ;
typedef int * BCRYPT_ALG_HANDLE ;


 int BCRYPT_ALG_HANDLE_HMAC_FLAG ;
 int BCRYPT_MD5_ALGORITHM ;
 char* BCryptCloseAlgorithmProvider (int *,int ) ;
 char* BCryptOpenAlgorithmProvider (int **,int ,int ,int ) ;
 int MS_PRIMITIVE_PROVIDER ;
 char* STATUS_SUCCESS ;
 int format_hash (int *,int,char*) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,...) ;
 char* pBCryptHash (int *,int *,int,int *,int,int *,int) ;
 int strcmp (char*,char const*) ;
 int test_alg_name (int *,char*) ;
 int test_hash_length (int *,int) ;

__attribute__((used)) static void test_BcryptHash(void)
{
    static const char expected[] =
        "e2a3e68d23ce348b8f68b3079de3d4c9";
    static const char expected_hmac[] =
        "7bda029b93fa8d817fcc9e13d6bdf092";
    BCRYPT_ALG_HANDLE alg;
    UCHAR md5[16], md5_hmac[16];
    char str[65];
    NTSTATUS ret;

    alg = ((void*)0);
    ret = BCryptOpenAlgorithmProvider(&alg, BCRYPT_MD5_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(alg != ((void*)0), "alg not set\n");

    test_hash_length(alg, 16);
    test_alg_name(alg, "MD5");

    memset(md5, 0, sizeof(md5));
    ret = pBCryptHash(alg, ((void*)0), 0, (UCHAR *)"test", sizeof("test"), md5, sizeof(md5));
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    format_hash( md5, sizeof(md5), str );
    ok(!strcmp(str, expected), "got %s\n", str);

    ret = BCryptCloseAlgorithmProvider(alg, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    alg = ((void*)0);
    memset(md5_hmac, 0, sizeof(md5_hmac));
    ret = BCryptOpenAlgorithmProvider(&alg, BCRYPT_MD5_ALGORITHM, MS_PRIMITIVE_PROVIDER, BCRYPT_ALG_HANDLE_HMAC_FLAG);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(alg != ((void*)0), "alg not set\n");

    ret = pBCryptHash(alg, (UCHAR *)"key", sizeof("key"), (UCHAR *)"test", sizeof("test"), md5_hmac, sizeof(md5_hmac));
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    format_hash( md5_hmac, sizeof(md5_hmac), str );
    ok(!strcmp(str, expected_hmac), "got %s\n", str);

    ret = BCryptCloseAlgorithmProvider(alg, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
}
