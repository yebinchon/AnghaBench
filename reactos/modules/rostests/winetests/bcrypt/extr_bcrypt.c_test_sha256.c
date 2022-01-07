
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha256_hmac ;
typedef int sha256 ;
typedef int len ;
typedef int buf_hmac ;
typedef int buf ;
typedef int ULONG ;
typedef int UCHAR ;
typedef char* NTSTATUS ;
typedef int * BCRYPT_HASH_HANDLE ;
typedef int * BCRYPT_ALG_HANDLE ;


 int BCRYPT_ALG_HANDLE_HMAC_FLAG ;
 int * BCRYPT_OBJECT_LENGTH ;
 int BCRYPT_SHA256_ALGORITHM ;
 char* BCryptCloseAlgorithmProvider (int *,int ) ;
 char* BCryptCreateHash (int *,int **,int *,int,int *,int,int ) ;
 char* BCryptDestroyHash (int *) ;
 char* BCryptFinishHash (int *,int *,int,int ) ;
 char* BCryptGetProperty (int *,int *,int *,int,int*,int ) ;
 char* BCryptHashData (int *,int *,int,int ) ;
 char* BCryptOpenAlgorithmProvider (int **,int ,int ,int ) ;
 int MS_PRIMITIVE_PROVIDER ;
 char* STATUS_BUFFER_TOO_SMALL ;
 char* STATUS_INVALID_HANDLE ;
 char* STATUS_INVALID_PARAMETER ;
 char* STATUS_SUCCESS ;
 int format_hash (int *,int,char*) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char const*) ;
 int test_alg_name (int *,char*) ;
 int test_hash_length (int *,int) ;

__attribute__((used)) static void test_sha256(void)
{
    static const char expected[] =
        "ceb73749c899693706ede1e30c9929b3fd5dd926163831c2fb8bd41e6efb1126";
    static const char expected_hmac[] =
        "34c1aa473a4468a91d06e7cdbc75bc4f93b830ccfc2a47ffd74e8e6ed29e4c72";
    BCRYPT_ALG_HANDLE alg;
    BCRYPT_HASH_HANDLE hash;
    UCHAR buf[512], buf_hmac[1024], sha256[32], sha256_hmac[32];
    ULONG size, len;
    char str[65];
    NTSTATUS ret;

    alg = ((void*)0);
    ret = BCryptOpenAlgorithmProvider(&alg, BCRYPT_SHA256_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(alg != ((void*)0), "alg not set\n");

    len = size = 0xdeadbeef;
    ret = BCryptGetProperty(((void*)0), BCRYPT_OBJECT_LENGTH, (UCHAR *)&len, sizeof(len), &size, 0);
    ok(ret == STATUS_INVALID_HANDLE, "got %08x\n", ret);

    len = size = 0xdeadbeef;
    ret = BCryptGetProperty(alg, ((void*)0), (UCHAR *)&len, sizeof(len), &size, 0);
    ok(ret == STATUS_INVALID_PARAMETER, "got %08x\n", ret);

    len = size = 0xdeadbeef;
    ret = BCryptGetProperty(alg, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len, sizeof(len), ((void*)0), 0);
    ok(ret == STATUS_INVALID_PARAMETER, "got %08x\n", ret);

    len = size = 0xdeadbeef;
    ret = BCryptGetProperty(alg, BCRYPT_OBJECT_LENGTH, ((void*)0), sizeof(len), &size, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(size == sizeof(len), "got %u\n", size);

    len = size = 0xdeadbeef;
    ret = BCryptGetProperty(alg, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len, 0, &size, 0);
    ok(ret == STATUS_BUFFER_TOO_SMALL, "got %08x\n", ret);
    ok(len == 0xdeadbeef, "got %u\n", len);
    ok(size == sizeof(len), "got %u\n", size);

    len = size = 0xdeadbeef;
    ret = BCryptGetProperty(alg, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len , sizeof(len), &size, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(len != 0xdeadbeef, "len not set\n");
    ok(size == sizeof(len), "got %u\n", size);

    test_hash_length(alg, 32);
    test_alg_name(alg, "SHA256");

    hash = ((void*)0);
    len = sizeof(buf);
    ret = BCryptCreateHash(alg, &hash, buf, len, ((void*)0), 0, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(hash != ((void*)0), "hash not set\n");

    ret = BCryptHashData(hash, ((void*)0), 0, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = BCryptHashData(hash, (UCHAR *)"test", sizeof("test"), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    test_hash_length(hash, 32);
    test_alg_name(hash, "SHA256");

    memset(sha256, 0, sizeof(sha256));
    ret = BCryptFinishHash(hash, sha256, sizeof(sha256), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    format_hash( sha256, sizeof(sha256), str );
    ok(!strcmp(str, expected), "got %s\n", str);

    ret = BCryptDestroyHash(hash);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = BCryptCloseAlgorithmProvider(alg, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    alg = ((void*)0);
    ret = BCryptOpenAlgorithmProvider(&alg, BCRYPT_SHA256_ALGORITHM, MS_PRIMITIVE_PROVIDER, BCRYPT_ALG_HANDLE_HMAC_FLAG);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(alg != ((void*)0), "alg not set\n");

    hash = ((void*)0);
    len = sizeof(buf_hmac);
    ret = BCryptCreateHash(alg, &hash, buf_hmac, len, (UCHAR *)"key", sizeof("key"), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(hash != ((void*)0), "hash not set\n");

    ret = BCryptHashData(hash, (UCHAR *)"test", sizeof("test"), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    test_hash_length(hash, 32);
    test_alg_name(hash, "SHA256");

    memset(sha256_hmac, 0, sizeof(sha256_hmac));
    ret = BCryptFinishHash(hash, sha256_hmac, sizeof(sha256_hmac), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    format_hash( sha256_hmac, sizeof(sha256_hmac), str );
    ok(!strcmp(str, expected_hmac), "got %s\n", str);

    ret = BCryptDestroyHash(hash);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = BCryptCloseAlgorithmProvider(alg, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
}
