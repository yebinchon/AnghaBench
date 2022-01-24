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
typedef  int /*<<< orphan*/  len ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/ * BCRYPT_ALG_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  BCRYPT_OBJECT_LENGTH ; 
 int /*<<< orphan*/  BCRYPT_RNG_ALGORITHM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MS_PRIMITIVE_PROVIDER ; 
 scalar_t__ STATUS_NOT_SUPPORTED ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    BCRYPT_ALG_HANDLE alg;
    ULONG size, len;
    UCHAR buf[16];
    NTSTATUS ret;

    alg = NULL;
    ret = FUNC3(&alg, BCRYPT_RNG_ALGORITHM, MS_PRIMITIVE_PROVIDER, 0);
    FUNC6(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC6(alg != NULL, "alg not set\n");

    len = size = 0xdeadbeef;
    ret = FUNC2(alg, BCRYPT_OBJECT_LENGTH, (UCHAR *)&len, sizeof(len), &size, 0);
    FUNC6(ret == STATUS_NOT_SUPPORTED, "got %08x\n", ret);

    FUNC7(alg, "RNG");

    FUNC5(buf, 0, 16);
    ret = FUNC1(alg, buf, 8, 0);
    FUNC6(ret == STATUS_SUCCESS, "got %08x\n", ret);
    FUNC6(FUNC4(buf, buf + 8, 8), "got zeroes\n");

    ret = FUNC0(alg, 0);
    FUNC6(ret == STATUS_SUCCESS, "got %08x\n", ret);
}