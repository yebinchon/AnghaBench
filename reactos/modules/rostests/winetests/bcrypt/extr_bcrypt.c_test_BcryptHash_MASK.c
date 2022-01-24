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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  char* NTSTATUS ;
typedef  int /*<<< orphan*/ * BCRYPT_ALG_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  BCRYPT_ALG_HANDLE_HMAC_FLAG ; 
 int /*<<< orphan*/  BCRYPT_MD5_ALGORITHM ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MS_PRIMITIVE_PROVIDER ; 
 char* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(void)
{
    static const char expected[] =
        "e2a3e68d23ce348b8f68b3079de3d4c9";
    static const char expected_hmac[] =
        "7bda029b93fa8d817fcc9e13d6bdf092";
    BCRYPT_ALG_HANDLE alg;
    UCHAR md5[16], md5_hmac[16];
    char str[65];
    NTSTATUS ret;

    alg = NULL;
    ret = FUNC1(&alg, BCRYPT_MD5_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0);
    FUNC4(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC4(alg != NULL, "alg not set\n");

    FUNC8(alg, 16);
    FUNC7(alg, "MD5");

    FUNC3(md5, 0, sizeof(md5));
    ret = FUNC5(alg, NULL, 0, (UCHAR *)"test", sizeof("test"), md5, sizeof(md5));
    FUNC4(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC2( md5, sizeof(md5), str );
    FUNC4(!FUNC6(str, expected), "got %s\n", str);

    ret = FUNC0(alg, 0);
    FUNC4(ret == STATUS_SUCCESS, "got %08x\n", ret);

    alg = NULL;
    FUNC3(md5_hmac, 0, sizeof(md5_hmac));
    ret = FUNC1(&alg, BCRYPT_MD5_ALGORITHM, MS_PRIMITIVE_PROVIDER, BCRYPT_ALG_HANDLE_HMAC_FLAG);
    FUNC4(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC4(alg != NULL, "alg not set\n");

    ret = FUNC5(alg, (UCHAR *)"key", sizeof("key"), (UCHAR *)"test", sizeof("test"), md5_hmac, sizeof(md5_hmac));
    FUNC4(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC2( md5_hmac, sizeof(md5_hmac), str );
    FUNC4(!FUNC6(str, expected_hmac), "got %s\n", str);

    ret = FUNC0(alg, 0);
    FUNC4(ret == STATUS_SUCCESS, "got %08x\n", ret);
}