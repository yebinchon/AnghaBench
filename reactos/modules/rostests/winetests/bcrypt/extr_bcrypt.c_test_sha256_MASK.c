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
typedef  int /*<<< orphan*/  sha256_hmac ;
typedef  int /*<<< orphan*/  sha256 ;
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
 int /*<<< orphan*/ * BCRYPT_OBJECT_LENGTH ; 
 int /*<<< orphan*/  BCRYPT_SHA256_ALGORITHM ; 
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
        "ceb73749c899693706ede1e30c9929b3fd5dd926163831c2fb8bd41e6efb1126";
    static const char expected_hmac[] =
        "34c1aa473a4468a91d06e7cdbc75bc4f93b830ccfc2a47ffd74e8e6ed29e4c72";
    BCRYPT_ALG_HANDLE alg;
    BCRYPT_HASH_HANDLE hash;
    UCHAR buf[512], buf_hmac[1024], sha256[32], sha256_hmac[32];
    ULONG size, len;
    char str[65];
    NTSTATUS ret;

    alg = NULL;
    ret = FUNC6(&alg, BCRYPT_SHA256_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0);
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

    FUNC12(alg, 32);
    FUNC11(alg, "SHA256");

    hash = NULL;
    len = sizeof(buf);
    ret = FUNC1(alg, &hash, buf, len, NULL, 0, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(hash != NULL, "hash not set\n");

    ret = FUNC5(hash, NULL, 0, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = FUNC5(hash, (UCHAR *)"test", sizeof("test"), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    FUNC12(hash, 32);
    FUNC11(hash, "SHA256");

    FUNC8(sha256, 0, sizeof(sha256));
    ret = FUNC3(hash, sha256, sizeof(sha256), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC7( sha256, sizeof(sha256), str );
    FUNC9(!FUNC10(str, expected), "got %s\n", str);

    ret = FUNC2(hash);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = FUNC0(alg, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    alg = NULL;
    ret = FUNC6(&alg, BCRYPT_SHA256_ALGORITHM, MS_PRIMITIVE_PROVIDER, BCRYPT_ALG_HANDLE_HMAC_FLAG);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(alg != NULL, "alg not set\n");

    hash = NULL;
    len = sizeof(buf_hmac);
    ret = FUNC1(alg, &hash, buf_hmac, len, (UCHAR *)"key", sizeof("key"), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC9(hash != NULL, "hash not set\n");

    ret = FUNC5(hash, (UCHAR *)"test", sizeof("test"), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    FUNC12(hash, 32);
    FUNC11(hash, "SHA256");

    FUNC8(sha256_hmac, 0, sizeof(sha256_hmac));
    ret = FUNC3(hash, sha256_hmac, sizeof(sha256_hmac), 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC7( sha256_hmac, sizeof(sha256_hmac), str );
    FUNC9(!FUNC10(str, expected_hmac), "got %s\n", str);

    ret = FUNC2(hash);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);

    ret = FUNC0(alg, 0);
    FUNC9(ret == STATUS_SUCCESS, "got %08x\n", ret);
}