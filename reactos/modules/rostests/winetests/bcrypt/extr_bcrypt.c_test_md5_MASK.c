#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  md5_hmac ;
typedef  int /*<<< orphan*/  md5 ;
typedef  int /*<<< orphan*/  len ;
typedef  int /*<<< orphan*/  buf_hmac ;
typedef  int /*<<< orphan*/  buf ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  char* NTSTATUS ;
typedef  int /*<<< orphan*/ * BCRYPT_HASH_HANDLE ;
typedef  int /*<<< orphan*/ * BCRYPT_ALG_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  BCRYPT_ALG_HANDLE_HMAC_FLAG ; 
 int /*<<< orphan*/  BCRYPT_MD5_ALGORITHM ; 
 int /*<<< orphan*/ * BCRYPT_OBJECT_LENGTH ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MS_PRIMITIVE_PROVIDER ; 
 char* STATUS_BUFFER_TOO_SMALL ; 
 char* STATUS_INVALID_HANDLE ; 
 char* STATUS_INVALID_PARAMETER ; 
 char* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC13(void)
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

    alg = NULL;
    ret = FUNC6(&alg, BCRYPT_MD5_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(alg != NULL, "alg not set\n");

    len = size = 0xdeadbeef;
    ret = FUNC4(NULL, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len, sizeof(len), &size, 0);
    FUNC9(ret == STATUS_INVALID_HANDLE, "got %08x\n", ret);

    len = size = 0xdeadbeef;
    ret = FUNC4(alg, NULL, (UCHAR *)&len, sizeof(len), &size, 0);
    FUNC9(ret == STATUS_INVALID_PARAMETER, "got %08x\n", ret);

    len = size = 0xdeadbeef;
    ret = FUNC4(alg, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len, sizeof(len), NULL, 0);
    FUNC9(ret == STATUS_INVALID_PARAMETER, "got %08x\n", ret);

    len = size = 0xdeadbeef;
    ret = FUNC4(alg, BCRYPT_OBJECT_LENGTH, NULL, sizeof(len), &size, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(size == sizeof(len), "got %u\n", size);

    len = size = 0xdeadbeef;
    ret = FUNC4(alg, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len, 0, &size, 0);
    FUNC9(ret == STATUS_BUFFER_TOO_SMALL, "got %08x\n", ret);
    FUNC9(len == 0xdeadbeef, "got %u\n", len);
    FUNC9(size == sizeof(len), "got %u\n", size);

    len = size = 0xdeadbeef;
    ret = FUNC4(alg, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len , sizeof(len), &size, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(len != 0xdeadbeef, "len not set\n");
    FUNC9(size == sizeof(len), "got %u\n", size);

    FUNC12(alg, 16);
    FUNC11(alg, "MD5");

    hash = NULL;
    len = sizeof(buf);
    ret = FUNC1(alg, &hash, buf, len, NULL, 0, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(hash != NULL, "hash not set\n");

    ret = FUNC5(hash, NULL, 0, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = FUNC5(hash, (UCHAR *)"test", sizeof("test"), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    FUNC12(hash, 16);
    FUNC11(hash, "MD5");

    FUNC8(md5, 0, sizeof(md5));
    ret = FUNC3(hash, md5, sizeof(md5), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC7( md5, sizeof(md5), str );
    FUNC9(!FUNC10(str, expected), "got %s\n", str);

    ret = FUNC2(hash);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = FUNC0(alg, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    alg = NULL;
    ret = FUNC6(&alg, BCRYPT_MD5_ALGORITHM, MS_PRIMITIVE_PROVIDER, BCRYPT_ALG_HANDLE_HMAC_FLAG);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(alg != NULL, "alg not set\n");

    hash = NULL;
    len = sizeof(buf_hmac);
    ret = FUNC1(alg, &hash, buf_hmac, len, (UCHAR *)"key", sizeof("key"), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(hash != NULL, "hash not set\n");

    ret = FUNC5(hash, (UCHAR *)"test", sizeof("test"), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    FUNC12(hash, 16);
    FUNC11(hash, "MD5");

    FUNC8(md5_hmac, 0, sizeof(md5_hmac));
    ret = FUNC3(hash, md5_hmac, sizeof(md5_hmac), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC7( md5_hmac, sizeof(md5_hmac), str );
    FUNC9(!FUNC10(str, expected_hmac), "got %s\n", str);

    ret = FUNC2(hash);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = FUNC0(alg, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
}