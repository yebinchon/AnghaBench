
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md5_hmac ;
typedef int md5 ;
typedef int len ;
typedef int buf_hmac ;
typedef int buf ;
typedef int ULONG ;
typedef int UCHAR ;
typedef char* NTSTATUS ;
typedef int * BCRYPT_HASH_HANDLE ;
typedef int * BCRYPT_ALG_HANDLE ;


 int BCRYPT_ALG_HANDLE_HMAC_FLAG ;
 int BCRYPT_MD5_ALGORITHM ;
 int * BCRYPT_OBJECT_LENGTH ;
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

__attribute__((used)) static void test_md5(void)
{
    static const char expected[] =
        "e2a3e68d23ce348b8f68b3079de3d4c9";
    static const char expected_hmac[] =
        "7bda029b93fa8d817fcc9e13d6bdf092";
    BCRYPT_ALG_HANDLE alg;
    BCRYPT_HASH_HANDLE hash;
    UCHAR buf[512], buf_hmac[1024], md5[16], md5_hmac[16];
    ULONG size, len;
    char str[65];
    NTSTATUS ret;

    alg = ((void*)0);
    ret = BCryptOpenAlgorithmProvider(&alg, BCRYPT_MD5_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0);
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

    test_hash_length(alg, 16);
    test_alg_name(alg, "MD5");

    hash = ((void*)0);
    len = sizeof(buf);
    ret = BCryptCreateHash(alg, &hash, buf, len, ((void*)0), 0, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(hash != ((void*)0), "hash not set\n");

    ret = BCryptHashData(hash, ((void*)0), 0, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = BCryptHashData(hash, (UCHAR *)"test", sizeof("test"), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    test_hash_length(hash, 16);
    test_alg_name(hash, "MD5");

    memset(md5, 0, sizeof(md5));
    ret = BCryptFinishHash(hash, md5, sizeof(md5), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    format_hash( md5, sizeof(md5), str );
    ok(!strcmp(str, expected), "got %s\n", str);

    ret = BCryptDestroyHash(hash);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = BCryptCloseAlgorithmProvider(alg, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    alg = ((void*)0);
    ret = BCryptOpenAlgorithmProvider(&alg, BCRYPT_MD5_ALGORITHM, MS_PRIMITIVE_PROVIDER, BCRYPT_ALG_HANDLE_HMAC_FLAG);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(alg != ((void*)0), "alg not set\n");

    hash = ((void*)0);
    len = sizeof(buf_hmac);
    ret = BCryptCreateHash(alg, &hash, buf_hmac, len, (UCHAR *)"key", sizeof("key"), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    ok(hash != ((void*)0), "hash not set\n");

    ret = BCryptHashData(hash, (UCHAR *)"test", sizeof("test"), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    test_hash_length(hash, 16);
    test_alg_name(hash, "MD5");

    memset(md5_hmac, 0, sizeof(md5_hmac));
    ret = BCryptFinishHash(hash, md5_hmac, sizeof(md5_hmac), 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
    format_hash( md5_hmac, sizeof(md5_hmac), str );
    ok(!strcmp(str, expected_hmac), "got %s\n", str);

    ret = BCryptDestroyHash(hash);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = BCryptCloseAlgorithmProvider(alg, 0);
    ok(ret == STATUS_SUCCESS, "got %08x\n", ret);
}
